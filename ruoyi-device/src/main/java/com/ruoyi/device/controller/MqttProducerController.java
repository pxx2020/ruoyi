package com.ruoyi.device.controller;

import com.ruoyi.common.annotation.Anonymous;
import com.ruoyi.device.service.mqtt.MqttPublisher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MqttProducerController {
    private final MqttPublisher mqttPublisher;

    @Autowired
    public MqttProducerController(MqttPublisher mqttPublisher) {
        this.mqttPublisher = mqttPublisher;
    }

    @GetMapping("/sendMessage")
    @Anonymous
    public String sendMessage(@RequestParam String topic, @RequestParam String message) {
        mqttPublisher.sendMessage(topic, message);
        return "消息已发送到主题: " + topic;
    }

    @GetMapping("/sendDefaultMessage")
    public String sendDefaultMessage(@RequestParam String message) {
        mqttPublisher.sendMessageToDefaultTopic(message);
        return "消息已发送到默认主题";
    }
}
