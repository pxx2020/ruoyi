package com.ruoyi.device.service.mqtt;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.AsyncContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

@Service
public class MqttMessageService {
    private final ConcurrentHashMap<String, AsyncContext> contextMap = new ConcurrentHashMap<>();
    private final MqttPublisher mqttPublisher;

    @Autowired
    public MqttMessageService(MqttPublisher mqttPublisher) {
        this.mqttPublisher = mqttPublisher;
    }
    public void sendMessage(HttpServletRequest request, HttpServletResponse response,String topic, String message) {
        AsyncContext asyncContext = request.startAsync();
        String correlationId = generateCorrelationId();  // 生成唯一 ID

        contextMap.put(correlationId, asyncContext); // 将 AsyncContext 存入 map

        // 发布 MQTT 消息，携带 correlationId
        mqttPublisher.sendMessage(topic, message);
    }

    private String generateCorrelationId() {
//        return UUID.randomUUID().toString(); // 生成唯一 ID
        return "correlationId";
    }



    public void completeRequest(String correlationId, String result) {
        AsyncContext asyncContext = contextMap.get(correlationId);
        System.out.println("asyncContext::"+asyncContext);
        if (asyncContext != null) {
            try {
                HttpServletResponse response = (HttpServletResponse) asyncContext.getResponse();
                response.setContentType("application/json");
                response.getWriter().write("{\"result\": \"" + result + "\"}");
                asyncContext.complete();
            } catch (IOException e) {
                e.printStackTrace();
            }finally {
                // 移除已完成的 context
                contextMap.remove(correlationId);
            }
        }
    }
}
