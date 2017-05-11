package cn.com.zlqf.camera.config;

import org.springframework.cache.CacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;

import redis.clients.jedis.JedisPoolConfig;

@Configuration
@ComponentScan(value = { "cn.com.zlqf.camera.service", "cn.com.zlqf.camera.dao" })
public class RootConfig {

	@Bean
	public JedisPoolConfig jedisPoolConfig() {
		JedisPoolConfig config = new JedisPoolConfig();
		return config;
	}

	@Bean
	public RedisConnectionFactory redisCF(JedisPoolConfig config) {
		JedisConnectionFactory factory = new JedisConnectionFactory();
		factory.setHostName("192.168.9.128");
		factory.setPort(6379);
		factory.setPoolConfig(config);
		return factory;
	}

	@Bean
	public RedisTemplate<String, Object> redisTemplate(RedisConnectionFactory redisCF) {
		RedisTemplate<String, Object> redisTemplate = new RedisTemplate<>();
		redisTemplate.setConnectionFactory(redisCF);
		return redisTemplate;
	}

	@Bean
	public CacheManager cacheManager(RedisTemplate<String, Object> redisTemplate) {
		return new RedisCacheManager(redisTemplate);
	}
}
