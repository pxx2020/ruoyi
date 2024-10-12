package com.ruoyi.device.controller;

import com.ruoyi.common.annotation.Anonymous;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.device.service.mqtt.MqttMessageService;
import com.ruoyi.device.service.mqtt.MqttPublisher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.AsyncContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@RestController
public class MqttProducerController extends BaseController {
    private final MqttMessageService mqttMessageService;

    @Autowired
    public MqttProducerController(MqttMessageService mqttMessageService) {
        this.mqttMessageService = mqttMessageService;
    }

    @PostMapping("/sendMessage")
    @Anonymous
    public void sendMessage(@RequestBody Map<String, String> payload, HttpServletRequest request, HttpServletResponse response) {
        String topic = payload.get("topic");
        String message = payload.get("message");
        System.out.println("topic::"+topic);
        System.out.println("message::"+message);
        mqttMessageService.sendMessage(request, response,topic, message);
//        return success("消息已发送到主题: " + topic);
    }

//    @GetMapping("/sendMessage")
//    @Anonymous
//    public AjaxResult sendMessage(@RequestParam String topic, @RequestParam String message) {
//        mqttPublisher.sendMessage(topic, message);
//        return success("消息已发送到主题: " + topic);
//    }


}
