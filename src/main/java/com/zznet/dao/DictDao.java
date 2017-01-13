package com.zznet.dao;

import com.zznet.entity.Dict;

import java.util.List;

/**
 * Created by zz on 2017/1/12.
 */
public interface DictDao {
    List<Dict> getDictList(String itype);
}
