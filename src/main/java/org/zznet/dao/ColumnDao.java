package org.zznet.dao;


import org.zznet.entity.ColumnInfo;

import java.util.List;

/**
 * Created by zz on 2016/10/4.
 */
public interface ColumnDao {
    List<ColumnInfo> getColList();
}
