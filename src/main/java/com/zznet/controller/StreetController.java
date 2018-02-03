package com.zznet.controller;

import com.zznet.dao.StreetDao;
import com.zznet.entity.StreetInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

/**
 * Created by zz on 2017/1/16.
 */
@Controller
public class StreetController {
    @Resource(name = "streetdao")
    private StreetDao streetDaoImpl;

    @RequestMapping("/getstreetlist/{pcode}")
    @ResponseBody
    public HashMap<String, Object> getstreetList( @PathVariable String pcode) {
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            List<StreetInfo> streetList = streetDaoImpl.getStreetListByParent(pcode);
            hashMap.put("streetlist", streetList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hashMap;
    }

    @RequestMapping("/getstreetlistbyname")
    public HashMap<String, Object> getstreetListByName(@RequestParam(value = "pname") String pname) {
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            List<StreetInfo> streetList = streetDaoImpl.getStreetListByParent(pname);
            hashMap.put("streetlist", streetList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hashMap;
    }
}