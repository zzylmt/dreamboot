package org.zznet.dao;

import org.zznet.entity.DBadmin;

import java.util.List;

/**
 * Created by zz on 2016/9/28 15:36.
 */
public interface DBadminDao {
    DBadmin getDBadmin(int id);

    DBadmin addDBadmin();

    List<DBadmin> getDBadmin(String username);

    DBadmin checkDBadmin(String username, String pswd);

    boolean update(DBadmin userinfo);

    boolean delete(int id);
}
