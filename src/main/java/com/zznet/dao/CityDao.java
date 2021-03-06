package com.zznet.dao;

import com.zznet.entity.CityInfo;

import java.util.List;

/**
 * Created by zz on 2016/12/22.
 */
public interface CityDao {
    List<CityInfo> getCityList();

    List<CityInfo> getCityListByParent(String parentcode);

    CityInfo getCity(String code);

    List<CityInfo> getCityList(String name, String pcode);
}
