package com.zznet.controller;

import com.zznet.dao.AreaDao;
import com.zznet.entity.AreaInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zz on 2017/1/16.
 */
@Controller
public class AreaController {
    @Resource(name = "areadao")
    private AreaDao areaDaoImpl;

    @RequestMapping("/getarealist/{pcode}")
    @ResponseBody
    public Map<String, Object> getareaList(@PathVariable int pcode) {
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            List<AreaInfo> areaList = areaDaoImpl.getAreaListByParent(String.valueOf(pcode));
            hashMap.put("areaList", areaList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hashMap;
    }

    @RequestMapping("/getarealistbyname")
    @ResponseBody
    public Map<String, Object> getareaListByName( @RequestParam(value = "pname") String pname, @RequestParam(value = "pcode") String pcode) {
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            List<AreaInfo> areaList = areaDaoImpl.getAreaList(pname, pcode);
            hashMap.put("areaList", areaList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hashMap;
    }
}