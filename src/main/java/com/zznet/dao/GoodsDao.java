package com.zznet.dao;

import com.zznet.entity.GoodsInfo;
import com.zznet.entity.ThePage;

/**
 * Created by zz on 2016/12/22.
 */
public interface GoodsDao {
    GoodsInfo addGoods(final GoodsInfo goods_old);

    boolean delete(int id);

    boolean update(GoodsInfo goodsinfo);

    GoodsInfo getGoods(int id);

    ThePage<GoodsInfo> getGoodsPageByCreater(int createrid, int pageno);
}
