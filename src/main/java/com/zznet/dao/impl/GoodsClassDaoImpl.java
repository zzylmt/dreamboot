package com.zznet.dao.impl;

import com.zznet.dao.GoodsClassDao;
import com.zznet.entity.GoodsClass;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zz on 2016/12/25.
 */
@Repository("goodsclassdao")
@Transactional
public class GoodsClassDaoImpl implements GoodsClassDao {
    @Override
    public GoodsClass getGoodsClass(int id) {
        return null;
    }

    @Override
    public List<GoodsClass> getGoodsClass(String classname) {
        return null;
    }
}
