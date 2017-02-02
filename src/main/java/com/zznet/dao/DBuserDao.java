package com.zznet.dao;

import com.zznet.entity.DBuser;

/**
 * Created by zz on 2017/2/2.
 */
public interface DBuserDao {
    DBuser getDBuser(int id);

    DBuser addDBuser();

    DBuser checkDBuser(String username, String pswd);

    boolean update(DBuser userinfo);
}
