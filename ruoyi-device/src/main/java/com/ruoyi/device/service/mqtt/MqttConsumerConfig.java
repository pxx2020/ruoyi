package com.ruoyi.device.service.mqtt;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.integration.annotation.ServiceActivator;
import org.springframework.integration.channel.DirectChannel;
import org.springframework.integration.core.MessageProducer;
import org.springframework.integration.mqtt.core.MqttPahoClientFactory;
import org.springframework.integration.mqtt.inbound.MqttPahoMessageDrivenChannelAdapter;
import org.springframework.integration.mqtt.support.DefaultPahoMessageConverter;
import org.springframework.messaging.MessageChannel;
import org.springframework.messaging.MessageHandler;

@Configuration
public class MqttConsumerConfig {

    private final MqttPahoClientFactory mqttClientFactory;
    private final MqttConsumer mqttConsumer;

    public MqttConsumerConfig(MqttPahoClientFactory mqttClientFactory, MqttConsumer mqttConsumer) {
        this.mqttClientFactory = mqttClientFactory;
        this.mqttConsumer = mqttConsumer;
    }

    @Bean
    public MessageChannel mqttInputChannel() {
        return new DirectChannel();
    }

    @Bean
    public MessageProducer inbound() {
        MqttPahoMessageDrivenChannelAdapter adapter = new MqttPahoMessageDrivenChannelAdapter(
                "mqtt-consumer", mqttClientFactory, "XMill/#");  // 订阅所有主题
        adapter.setCompletionTimeout(5000);
        adapter.setConverter(new DefaultPahoMessageConverter());
        adapter.setQos(1);
        adapter.setOutputChannel(mqttInputChannel());
        return adapter;
    }

    @Bean
    @ServiceActivator(inputChannel = "mqttInputChannel")
    public MessageHandler handler() {
        // 通过注入的 MqttMessageHandlerService 作为消息处理器
        return mqttConsumer;
    }
}
