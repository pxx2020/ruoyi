package com.ruoyi.device.service.mqtt;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.integration.annotation.ServiceActivator;
import org.springframework.integration.channel.DirectChannel;
import org.springframework.integration.core.MessageProducer;
import org.springframework.integration.mqtt.core.MqttPahoClientFactory;
import org.springframework.integration.mqtt.inbound.MqttPahoMessageDrivenChannelAdapter;
import org.springframework.integration.mqtt.support.DefaultPahoMessageConverter;
import org.springframework.messaging.Message;
import org.springframework.messaging.MessageChannel;
import org.springframework.messaging.MessageHandler;
import org.springframework.stereotype.Service;

@Service
public class MqttConsumer implements MessageHandler{
    @Autowired
    private MqttMessageService mqttMessageService; // 注入服务
    @Override
    public void handleMessage(Message<?> message) {
        System.out.println("接收到message: " + message);
        String payload = message.getPayload().toString();
        System.out.println("接收到消息: " + payload);
        // 在这里处理你的消息

        // 解析出 correlationId 和处理结果
        String correlationId = extractCorrelationId(payload);
        String result = extractResult(payload);

        // 使用 correlationId 完成异步请求
        if("bbbb".equals(payload)){
            System.out.println("韩红和");
            mqttMessageService.completeRequest(correlationId, result);
        }

    }

    private String extractCorrelationId(String payload) {
        // 从消息中提取出 correlationId（根据具体的消息格式实现）
        return "correlationId";
    }

    private String extractResult(String payload) {
        // 从消息中提取出设备处理结果（根据具体的消息格式实现）
        return "processed result";
    }
}
