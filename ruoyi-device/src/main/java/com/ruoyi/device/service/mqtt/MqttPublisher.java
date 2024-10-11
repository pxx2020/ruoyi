package com.ruoyi.device.service.mqtt;

import org.springframework.integration.support.MessageBuilder;
import org.springframework.messaging.Message;
import org.springframework.messaging.MessageHandler;
import org.springframework.stereotype.Service;

@Service
public class MqttPublisher {
    private final MessageHandler mqttMessageHandler;

    public MqttPublisher(MessageHandler mqttMessageHandler) {
        this.mqttMessageHandler = mqttMessageHandler;
    }

    /**
     * 发送消息到指定主题
     *
     * @param topic   主题
     * @param payload 消息内容
     */
    public void sendMessage(String topic, String payload) {
        Message<String> message = MessageBuilder.withPayload(payload)
                .setHeader("mqtt_topic", topic)
                .build();
        mqttMessageHandler.handleMessage(message);
        System.out.println("消息已发送到主题：" + topic + "，内容：" + payload);
    }

    /**
     * 发送消息到默认主题
     *
     * @param payload 消息内容
     */
    public void sendMessageToDefaultTopic(String payload) {
        sendMessage("defaultTopic", payload);
    }
}
