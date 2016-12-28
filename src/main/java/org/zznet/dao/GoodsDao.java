package org.zznet.dao;

import org.zznet.entity.GoodsInfo;
import org.zznet.entity.ThePage;

import java.util.List;

/**
 * Created by zz on 2016/12/22.
 */
public interface GoodsDao {
    GoodsInfo getGoods(int id);

    ThePage<GoodsInfo> getAreaPageByCreater(int createrid,int pageno);
}
