package com.zznet.dao;

import com.zznet.entity.GoodsClass;

import java.util.List;

/**
 * Created by zz on 2016/12/25.
 */
public interface GoodsClassDao {
    GoodsClass getGoodsClass(int id);

    List<GoodsClass> getGoodsClass(String classname);
}
