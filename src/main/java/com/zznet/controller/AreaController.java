package com.zznet.controller;

import com.zznet.dao.AreaDao;
import com.zznet.entity.AreaInfo;
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
public class AreaController {
    @Resource(name = "areadao")
    private AreaDao areaDaoImpl;

    @RequestMapping("/getarealist/{pcode}")
    public String getareaList(HttpServletResponse response, @PathVariable int pcode) {
        response.setContentType("text/xml;charset=utf-8");
        PrintWriter out = null;
        String json = "{}";
        JSONObject jsonObj = JSONObject.fromObject(json);
        try {
            out = response.getWriter();
            List<AreaInfo> areaList = areaDaoImpl.getAreaListByParent(String.valueOf(pcode));
            jsonObj.put("areaList", areaList);
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

    @RequestMapping("/getarealistbyname")
    public String getareaListByName(HttpServletResponse response, @RequestParam(value = "pname") String pname, @RequestParam(value = "pcode") String pcode) {
        response.setContentType("text/xml;charset=utf-8");
        PrintWriter out = null;
        String json = "{}";
        JSONObject jsonObj = JSONObject.fromObject(json);
        try {
            out = response.getWriter();
            List<AreaInfo> areaList = areaDaoImpl.getAreaList(pname, pcode);
            jsonObj.put("areaList", areaList);
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