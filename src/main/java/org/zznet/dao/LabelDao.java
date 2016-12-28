package org.zznet.dao;


import org.zznet.entity.LabelInfo;
import org.zznet.entity.ThePage;

/**
 * Created by zz on 2016/9/28 15:59.
 */
public interface LabelDao {
    LabelInfo addLabel();

    boolean delete(int id);

    boolean update(LabelInfo labelinfo);

    ThePage<LabelInfo> getLabel(int pageno);

    ThePage<LabelInfo> getLabel(String labelname, int pageno);
}
