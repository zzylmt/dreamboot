package com.zznet.dao;

import com.zznet.entity.ProvinceInfo;

import java.util.List;

/**
 * Created by zz on 2016/12/22.
 */
public interface ProviceDao {
    List<ProvinceInfo> getProviceList();

    List<ProvinceInfo> getProviceList(String name);

    ProvinceInfo getProvice(String code);
}
