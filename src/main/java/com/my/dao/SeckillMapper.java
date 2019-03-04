package com.my.dao;

import com.my.entity.Seckill;
import com.my.entity.SeckillExample;

import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SeckillMapper {
    int countByExample(SeckillExample example);

    int deleteByExample(SeckillExample example);

    int deleteByPrimaryKey(Long seckillId);

    int insert(Seckill record);

    int insertSelective(Seckill record);

    List<Seckill> selectByExample(SeckillExample example);

    Seckill selectByPrimaryKey(Long seckillId);

    int updateByExampleSelective(@Param("record") Seckill record, @Param("example") SeckillExample example);

    int updateByExample(@Param("record") Seckill record, @Param("example") SeckillExample example);

    int updateByPrimaryKeySelective(Seckill record);

    int updateByPrimaryKey(Seckill record);
    
    /**
     * 减库存
     * @param seckillId
     * @param killTime
     * @return 如果影响行数>1，表示更新的记录函数
     */
    int reduceNumber(@Param("seckillId") long seckillId, @Param("killTime") Date killTime);

    /**
     * 根据id查询秒杀对象
     * @param seckillId
     * @return
     */
    Seckill queryById(long seckillId);

    /**
     * 根据偏移量查询秒杀商品列表
     * @param offset
     * @param limit
     * @return
     */

    //注意：@Param表示给参数命名，若是不加，按照java没有保存形参的习性，传值至junit测试会报错
    //原因：对应的xml文件中sql语句要接受两个参数，若要正确传参，则需要给参数命名
    List<Seckill> queryAll(@Param("offset") int offset, @Param("limit") int limit);
}