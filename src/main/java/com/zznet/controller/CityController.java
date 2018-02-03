package com.zznet.controller;

import com.zznet.dao.CityDao;
import com.zznet.entity.CityInfo;
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
public class CityController {
    @Resource(name = "citydao")
    private CityDao cityDaoImpl;

    @RequestMapping("/getcitylist/{pcode}")
    @ResponseBody
    public Map<String, Object> getcityList(@PathVariable int pcode) {
        HashMap<String, Object> hashMap = new HashMap<>();

        try {
            List<CityInfo> cityList = cityDaoImpl.getCityListByParent(String.valueOf(pcode));
            hashMap.put("cityList", cityList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hashMap;
    }

    @RequestMapping("/getcitylistbyname")
    @ResponseBody
    public Map<String, Object> getcityListByName(@RequestParam(value = "pname") String pname, @RequestParam(value = "pcode") String pcode) {
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            List<CityInfo> cityList = cityDaoImpl.getCityList(pname, pcode);
            hashMap.put("cityList", cityList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hashMap;
    }
}