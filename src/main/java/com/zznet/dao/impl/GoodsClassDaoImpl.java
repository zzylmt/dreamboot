package com.zznet.dao.impl;

import com.zznet.dao.GoodsClassDao;
import com.zznet.entity.GoodsClass;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zz on 2016/12/25.
 */
@Repository("goodsclassdao")
@Transactional
public class GoodsClassDaoImpl implements GoodsClassDao {
    @Resource
    private JdbcTemplate jdbcTemplate;

    @Override
    public GoodsClass getGoodsClass(int id) {
        String sql = "select a.id, a.goodsclassname,a.parentid,a.clevel from goodsclass where a.id= ? ";

        GoodsClass goodsClassInfo = new GoodsClass();
        try {
            goodsClassInfo = this.jdbcTemplate.queryForObject(sql,
                    new Object[]{id}, (rs, rowNum) -> {
                        GoodsClass a = new GoodsClass();
                        a.setId(rs.getInt(1));
                        a.setGoodsclassname(rs.getString(2));
                        a.setParentid(rs.getInt(3));
                        a.setClevel(rs.getInt(4));
                        return a;
                    });
        } catch (Exception e) {
            e.printStackTrace();
        }
        return goodsClassInfo;
    }

    @Override
    public List<GoodsClass> getGoodsClass(String classname) {
        String mysql = "select a.id, a.goodsclassname,a.parentid,a.clevel from goodsclass as a where goodsclassname like '%?%' limit 1,15";
        List<GoodsClass> goodsclassList = new ArrayList<>();
        try {
            RowMapper<GoodsClass> mapper = (rs, rowNum) -> {
                GoodsClass a = new GoodsClass();
                a.setId(rs.getInt(1));
                a.setGoodsclassname(rs.getString(2));
                a.setParentid(rs.getInt(3));
                a.setClevel(rs.getInt(4));
                return a;
            };
            goodsclassList = jdbcTemplate.query(mysql, mapper);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }

        return goodsclassList;
    }
}
