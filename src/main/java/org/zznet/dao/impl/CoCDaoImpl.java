package org.zznet.dao.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zznet.dao.CoCDao;
import org.zznet.entity.CoCInfo;
import org.zznet.entity.ThePage;

/**
 * Created by zz on 2017/1/10.
 */

@Service("cocdao")
@Transactional
public class CoCDaoImpl implements CoCDao {
    @Override
    public CoCInfo getCoC(int id) {
        return null;
    }

    @Override
    public ThePage<CoCInfo> getCoCByName(String cocname, int pageno) {
        return null;
    }
}
