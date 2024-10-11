package service.mqtt;

import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MqttOptionsConfig {

    @Bean
    public MqttConnectOptions mqttConnectOptions() {
        System.out.println("1111111111111");
        MqttConnectOptions options = new MqttConnectOptions();
        options.setServerURIs(new String[] { "tcp://localhost:1883" });  // 服务器地址
        options.setUserName("");     // 可选：设置用户名
        options.setPassword("".toCharArray());  // 可选：设置密码
        options.setCleanSession(true);  // 保证每次新的连接都是一个新的会话
        return options;
    }
}
