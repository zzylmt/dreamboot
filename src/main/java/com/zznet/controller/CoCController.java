package com.zznet.controller;

import com.zznet.dao.*;
import com.zznet.entity.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by zz on 2017/1/11.
 */
@Controller
public class CoCController {
    @Resource(name = "cocdao")
    private CoCDao cocDaoImpl;

    @Resource(name = "provicedao")
    private ProviceDao proviceDaoImpl;

    @Resource(name = "citydao")
    private CityDao cityDaoImpl;

    @Resource(name = "areadao")
    private AreaDao areaDaoImpl;

    @Resource(name = "dictdao")
    private DictDao dictDaoImpl;

    @RequestMapping("/sys/coclist")
    public String sysarticlelist(HttpServletRequest request, @RequestParam(value = "cocname") String cocname, @RequestParam(value = "curpageno") int curpageno)
            throws Exception {

        try {
            ThePage<CoCInfo> goodspage = new ThePage<>();

            if (curpageno != -1) {
                goodspage = cocDaoImpl.getCoCByName(cocname, curpageno);
            }

            int prepage;
            int nextpage;
            if (goodspage.getCurrent() - 1 < 1) {
                prepage = 1;
            } else {
                prepage = goodspage.getCurrent() - 1;
            }

            if (goodspage.getCurrent() + 1 > goodspage.getTotalpages()) {
                nextpage = goodspage.getTotalpages();
            } else {
                nextpage = goodspage.getCurrent() + 1;
            }

            request.setAttribute("thelist", goodspage.getPageItems());
            request.setAttribute("totalpage", goodspage.getTotalpages());
            request.setAttribute("totalrecode", goodspage.getTotalrecord());
            request.setAttribute("currentpageno", goodspage.getCurrent());
            request.setAttribute("nextpage", nextpage);
            request.setAttribute("prepage", prepage);

            request.setAttribute("cocname", cocname);
        } catch (Exception e) {
            e.printStackTrace();
            return "sys/login";
        }

        return "sys/coclist";
    }

    @RequestMapping("/sys/cocinfo/{cid}")
    public String syscocinfo(HttpServletRequest request, @PathVariable int cid)
            throws Exception {
        try {

            CoCInfo cocinfo = cocDaoImpl.getCoC(cid);
            List<ProvinceInfo> provinceList = proviceDaoImpl.getProviceList();
            List<CityInfo> cityList = cityDaoImpl.getCityListByParent(cocinfo.getProvince_code());
            List<AreaInfo> areaList = areaDaoImpl.getAreaListByParent(cocinfo.getCity_code());
            List<Dict> cstatusList = dictDaoImpl.getDictList("iStatus");

            request.setAttribute("cocinfo", cocinfo);
            request.setAttribute("provinceList", provinceList);
            request.setAttribute("cityList", cityList);
            request.setAttribute("areaList", areaList);
            request.setAttribute("cstatusList", cstatusList);
        } catch (Exception e) {
            e.printStackTrace();
            return "sys/login";
        }

        return "sys/cocedit";
    }

    @RequestMapping("/sys/cocsave")
    public String syscocsave(HttpServletRequest request, @RequestParam(value = "cocname") String cocname, @RequestParam(value = "province_code") String
            province_code, @RequestParam(value = "city_code") String city_code, @RequestParam(value = "area_code") String area_code, @RequestParam(value = "memo")
                                     String memo, @RequestParam(value = "cocid") int cocid, @RequestParam(value = "headpic") String headpic, @RequestParam(value = "contact") String contact,
                             @RequestParam(value = "telno") String telno, @RequestParam(value = "addr") String addr, @RequestParam(value = "cstatus") int cstatus)
            throws Exception {
        CoCInfo cocinfo;
        boolean result;
        try {
            cocinfo = cocDaoImpl.getCoC(cocid);

            cocinfo.setCocname(cocname);
            cocinfo.setProvince_code(province_code);
            cocinfo.setArea_code(area_code);
            cocinfo.setCity_code(city_code);
            cocinfo.setMemo(memo);
            cocinfo.setHeadpic(headpic);
            cocinfo.setContact(contact);
            cocinfo.setTelno(telno);
            cocinfo.setAddr(addr);
            cocinfo.setCstatus(cstatus);

            result = cocDaoImpl.update(cocinfo);
        } catch (Exception e) {
            e.printStackTrace();
            return "sys/login";
        }

        return "redirect:sys/cocinfo" + cocinfo.getId() + "result=" + result;
    }

}
