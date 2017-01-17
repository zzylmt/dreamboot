package com.zznet.controller;

import com.zznet.dao.ProviceDao;
import com.zznet.entity.ProvinceInfo;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created by zz on 2017/1/16.
 */
@Controller
public class ProvinceController {
    @Resource(name = "provicedao")
    private ProviceDao proviceDaoImpl;

    @RequestMapping("/getprovincelist")
    public String getprovinceList(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/xml;charset=utf-8");
        PrintWriter out = null;
        String json = "{}";
        JSONObject jsonObj = JSONObject.fromObject(json);
        try {
            out = response.getWriter();
            List<ProvinceInfo> provinceList = proviceDaoImpl.getProviceList();
            jsonObj.put("provinceList", provinceList);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (out != null) {
                out.println(jsonObj.toString());
                out.flush();
                out.close();
            }
        }
        return null;
    }
}