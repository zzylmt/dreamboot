package org.zznet.dao;

import org.zznet.entity.CityInfo;

import java.util.List;

/**
 * Created by zz on 2016/12/22.
 */
public interface CityDao {
    List<CityInfo> getCityList();

    CityInfo getCity(String code);

    List<CityInfo> getCityList(String name);
}
