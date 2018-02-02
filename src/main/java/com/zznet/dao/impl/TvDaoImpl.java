package com.zznet.dao.impl;

import com.zznet.dao.TvDao;
import com.zznet.entity.TVLine;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.sql.PreparedStatement;

/**
 * Created by zz on 2017/7/9.
 */
@Repository("tvdao")
@Transactional
public class TvDaoImpl implements TvDao {
    @Resource
    private JdbcTemplate jdbcTemplate;

    @Override
    public TVLine addTVLine(TVLine tvLine_old) {
        final String mysql = "INSERT INTO tvinfo (titlename,titleurl,titleno ) VALUES (?,?,?)";

        TVLine articleinfo;
        KeyHolder keyHolder = new GeneratedKeyHolder();

        this.jdbcTemplate.update(connection -> {
                    PreparedStatement ps = connection.prepareStatement(mysql,
                            new String[]{"id"});
                    ps.setString(1, tvLine_old.getTitlename());
                    ps.setString(2, tvLine_old.getTitleurl());
                    ps.setInt(3, tvLine_old.getTitleno());
                    return ps;
                }
                , keyHolder);
        articleinfo = tvLine_old;
        articleinfo.setTvid(keyHolder.getKey().intValue());

        return articleinfo;
    }
}
