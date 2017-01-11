package com.zznet.dao.impl;

import com.zznet.common.PageSize;
import com.zznet.dao.LabelDao;
import com.zznet.entity.LabelInfo;
import com.zznet.entity.ThePage;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.sql.PreparedStatement;

/**
 * Created by zz on 2017/1/11.
 */
@Service("labeldao")
@Transactional
public class LabelDaoImpl implements LabelDao, PageSize {
    @Resource
    private JdbcTemplate jdbcTemplate;

    @Override
    public LabelInfo addLabel(final LabelInfo label_old) {
        final String mysql = "INSERT into labelinfo (labelname) values (?)";

        LabelInfo label;
        KeyHolder keyHolder = new GeneratedKeyHolder();

        jdbcTemplate.update(connection -> {
                    PreparedStatement ps = connection.prepareStatement(mysql,
                            new String[]{"id"});
                    ps.setString(1, label_old.getLabelname());
                    return ps;
                }
                , keyHolder);

        label = label_old;
        label.setId(keyHolder.getKey().intValue());

        return label;
    }

    @Override
    public boolean delete(int id) {
        String mysql = "delete from labelinfo where id=?";

        boolean result = false;

        try {
            this.jdbcTemplate.update(mysql, id);
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public boolean update(LabelInfo labelinfo) {
        String mysql = "update labelinfo set labelname=? where id=?";

        boolean result = false;

        try {
            this.jdbcTemplate.update(mysql, labelinfo.getLabelname(), labelinfo.getId());
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public ThePage<LabelInfo> getLabel(int pageno) {
        return null;
    }

    @Override
    public ThePage<LabelInfo> getLabel(String labelname, int pageno) {
        ThePage<LabelInfo> labelpage = new ThePage<>();

        String sql = "select a.id,a.labelname from labelinfo as a where a.labelname = ? order by a.id limit ?,?";
        String sql_count = "select count(*) from labelinfo as a where a.labelname = ?";

        if (pageno <= 0) {
            pageno = 1;
        }
        int startrecord = (pageno - 1) * pagesize;
        int totalrecord;
        int totalpage;

        RowMapper<LabelInfo> mapper = (rs, rowNum) -> {
            LabelInfo a = new LabelInfo();
            a.setId(rs.getInt(1));
            a.setLabelname(rs.getString(2));
            return a;
        };

        totalrecord = jdbcTemplate.queryForObject(sql_count,
                new Object[]{labelname}, Integer.class);
        labelpage.setTotalrecord(totalrecord);

        totalpage = (int) Math.ceil((double) totalrecord / (double) pagesize);

        labelpage.setPageItems(jdbcTemplate.query(sql, new Object[]{labelname,
                startrecord, pagesize}, mapper));

        labelpage.setCurrent(pageno);
        if (totalpage <= 0) {
            totalpage = 1;
        }
        labelpage.setTotalpages(totalpage);

        return labelpage;
    }
}
