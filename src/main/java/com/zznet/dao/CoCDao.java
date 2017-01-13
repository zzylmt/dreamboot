package com.zznet.dao;

import com.zznet.entity.CoCInfo;
import com.zznet.entity.ThePage;

import java.util.List;

/**
 * Created by zz on 2016/12/22.
 */
public interface CoCDao {
    CoCInfo addCoC(final CoCInfo coc_old);

    boolean delete(int id);

    boolean update(CoCInfo cocinfo);

    CoCInfo getCoC(int id);

    ThePage<CoCInfo> getCoCByName(String cocname, int pageno);

    List<CoCInfo> getCoCList();
}