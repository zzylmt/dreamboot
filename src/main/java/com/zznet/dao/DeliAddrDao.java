package com.zznet.dao;

import com.zznet.entity.DeliAddr;

import java.util.List;

/**
 * Created by zz on 2017/2/2.
 */
public interface DeliAddrDao {

    List<DeliAddr> getDeliAddrList(int userid);

    DeliAddr addDeliAddr(final DeliAddr deliaddr_old);

    boolean delete(int userid, int orderno);

    boolean update(DeliAddr deliaddr);

    DeliAddr getDeliAddr(int userid, int orderno);
}
