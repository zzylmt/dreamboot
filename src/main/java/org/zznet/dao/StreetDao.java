package org.zznet.dao;

import org.zznet.entity.StreetInfo;

import java.util.List;

/**
 * Created by zz on 2016/12/22.
 */
public interface StreetDao {
    List<StreetInfo> getStreetList();

    StreetInfo getStreet(String code);

    List<StreetInfo> getStreetList(String name);
}
