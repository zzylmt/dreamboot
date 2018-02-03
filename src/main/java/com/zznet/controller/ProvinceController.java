package com.zznet.controller;

import com.zznet.dao.ProviceDao;
import com.zznet.entity.ProvinceInfo;
import org.springframework.stereotype.Controller;
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
public class ProvinceController {
    @Resource(name = "provicedao")
    private ProviceDao proviceDaoImpl;

    @RequestMapping("/getprovincelist")
    @ResponseBody
    public HashMap<String, Object> getprovinceList() {
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            List<ProvinceInfo> provinceList = proviceDaoImpl.getProviceList();
            hashMap.put("provinceList", provinceList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hashMap;
    }

    @RequestMapping("/getprovincelistbyname")
    @ResponseBody
    public HashMap<String, Object> getprovinceListByName(@RequestParam(value = "pname") String pname) {
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            List<ProvinceInfo> provinceList = proviceDaoImpl.getProviceList(pname);
            hashMap.put("provinceList", provinceList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hashMap;
    }

}