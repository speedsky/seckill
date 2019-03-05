package com.my;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.my.dao.cache.RedisDao;
import com.my.entity.Seckill;

@RunWith(SpringRunner.class)
@SpringBootTest
public class RedisDaoTest {
	
	@Autowired
	RedisDao redisDao;
	
	@Test
	public void TestRedisDao() {
		
		Seckill seckill=new Seckill();
		
		seckill.setName("name");
		seckill.setNumber(100);
		seckill.setCreateTime(new Date());
		System.out.println(redisDao.putSeckill(seckill));
		
	}

}
