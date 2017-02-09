package com.zznet.controller;

import com.zznet.dao.ProviceDao;
import com.zznet.dao.StreetDao;
import com.zznet.entity.ProvinceInfo;
import com.zznet.entity.StreetInfo;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created by zz on 2017/1/16.
 */
@Controller
public class StreetController {
    @Resource(name = "streetdao")
    private StreetDao streetDaoImpl;

    @RequestMapping("/getstreetlist/{pcode}")
    public String getstreetList(HttpServletResponse response, @PathVariable String pcode) {
        response.setContentType("text/xml;charset=utf-8");
        PrintWriter out = null;
        String json = "{}";
        JSONObject jsonObj = JSONObject.fromObject(json);
        try {
            out = response.getWriter();
            List<StreetInfo> streetList = streetDaoImpl.getStreetListByParent(pcode);
            jsonObj.put("streetlist", streetList);
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

    @RequestMapping("/getstreetlistbyname")
    public String getstreetListByName(HttpServletResponse response, @RequestParam(value = "pname") String pname) {
        response.setContentType("text/xml;charset=utf-8");
        PrintWriter out = null;
        String json = "{}";
        JSONObject jsonObj = JSONObject.fromObject(json);
        try {
            out = response.getWriter();
            List<StreetInfo> streetList = streetDaoImpl.getStreetListByParent(pname);
            jsonObj.put("streetlist", streetList);
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