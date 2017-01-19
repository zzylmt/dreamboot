package com.zznet.controller;

import com.zznet.dao.CityDao;
import com.zznet.entity.CityInfo;
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
public class CityController {
    @Resource(name = "citydao")
    private CityDao cityDaoImpl;

    @RequestMapping("/getcitylist/{pcode}")
    public String getcityList(HttpServletResponse response, @PathVariable int pcode) throws Exception {
        response.setContentType("text/xml;charset=utf-8");
        PrintWriter out = null;
        String json = "{}";
        JSONObject jsonObj = JSONObject.fromObject(json);

        try {
            out = response.getWriter();
              List<CityInfo> cityList = cityDaoImpl.getCityListByParent(String.valueOf(pcode));
              jsonObj.put("cityList", cityList);
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

    @RequestMapping("/getcitylistbyname")
    public String getcityListByName(HttpServletResponse response, @RequestParam(value = "pname") String pname, @RequestParam(value = "pcode") String pcode) {
        response.setContentType("text/xml;charset=utf-8");
        PrintWriter out = null;
        String json = "{}";
        JSONObject jsonObj = JSONObject.fromObject(json);
        try {
            out = response.getWriter();
            List<CityInfo> cityList = cityDaoImpl.getCityList(pname, pcode);
            jsonObj.put("cityList", cityList);
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