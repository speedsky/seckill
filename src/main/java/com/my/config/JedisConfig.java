package com.my.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.cache.annotation.CachingConfigurerSupport;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.beans.factory.annotation.Qualifier;

import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

@Configuration
public class JedisConfig extends CachingConfigurerSupport{

	@Autowired
	private RedisConfiguration redisConfiguration;
	
	@Bean(name = "jedisPoolConfig")
    @ConfigurationProperties(prefix = "spring.redis.jedis.pool")
    public JedisPoolConfig getRedisConfig() {
        JedisPoolConfig config = new JedisPoolConfig();
        return config;
    }
	
	@Bean(name = "jedisPool")
    public JedisPool jedisPool(@Qualifier(value = "jedisPoolConfig") final JedisPoolConfig jedisPoolConfig) {
     
        String host = redisConfiguration.getHost();
        Integer timeout = redisConfiguration.getTimeout();
        int port = redisConfiguration.getPort();
        String password = redisConfiguration.getPassword();
        int database = redisConfiguration.getDatabase();
        JedisPool jedisPool = new JedisPool(jedisPoolConfig, host, port, timeout, password, database);
      
        return jedisPool;
    }
}
