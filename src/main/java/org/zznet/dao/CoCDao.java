package org.zznet.dao;

import org.zznet.entity.CoCInfo;
import org.zznet.entity.ThePage;

/**
 * Created by zz on 2016/12/22.
 */
public interface CoCDao {
    CoCInfo getCoC(int id);

    ThePage<CoCInfo> getCoCByName(String cocname, int pageno);
}