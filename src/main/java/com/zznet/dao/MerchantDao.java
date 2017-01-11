package com.zznet.dao;

import com.zznet.entity.MerchantInfo;
import com.zznet.entity.ThePage;

/**
 * Created by zz on 2016/12/22.
 */
public interface MerchantDao {
    MerchantInfo addMerchant(final MerchantInfo merchant_old);

    boolean delete(int id);

    boolean update(MerchantInfo merchantinfo);

    MerchantInfo getMerchant(int id);

    ThePage<MerchantInfo> getMerchantByName(String mername, int pageno);
}
