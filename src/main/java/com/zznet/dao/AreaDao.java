package com.zznet.dao;

import com.zznet.entity.AreaInfo;

import java.util.List;

/**
 * Created by zz on 2016/12/22.
 */
public interface AreaDao {
    List<AreaInfo> getAreaList();

    AreaInfo getArea(String code);

    List<AreaInfo> getAreaList(String name);
}
