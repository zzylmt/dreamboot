package org.zznet.dao;

import org.zznet.entity.MerchantInfo;
import org.zznet.entity.ThePage;

/**
 * Created by zz on 2016/12/22.
 */
public interface MerchantDao {
    MerchantInfo getMerchant(int id);

    ThePage<MerchantInfo> getMerchantByName(String mername, int pageno);
}
