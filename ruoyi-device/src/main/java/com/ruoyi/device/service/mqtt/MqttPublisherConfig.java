package com.ruoyi.device.service.mqtt;

import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.integration.mqtt.core.DefaultMqttPahoClientFactory;
import org.springframework.integration.mqtt.core.MqttPahoClientFactory;
import org.springframework.integration.mqtt.outbound.MqttPahoMessageHandler;
import org.springframework.integration.mqtt.support.DefaultPahoMessageConverter;
import org.springframework.messaging.MessageHandler;

@Configuration
public class MqttPublisherConfig {

    private final MqttPahoClientFactory mqttClientFactory;

    public MqttPublisherConfig(MqttPahoClientFactory mqttClientFactory) {
        this.mqttClientFactory = mqttClientFactory;
    }

    @Bean
    public MessageHandler mqttMessageHandler() {
        MqttPahoMessageHandler messageHandler = new MqttPahoMessageHandler("mqtt-producer", mqttClientFactory);
        messageHandler.setAsync(true);  // 设置为异步发送
        messageHandler.setConverter(new DefaultPahoMessageConverter());
        messageHandler.setDefaultTopic("defaultTopic");  // 可以设定一个默认主题
        return messageHandler;
    }
}
