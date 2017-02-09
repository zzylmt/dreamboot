package com.zznet.controller;

import com.zznet.dao.*;
import com.zznet.entity.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by zz on 2017/2/2.
 */
@Controller
public class DeliAddrController {
    @Resource(name = "deliaddrdao")
    private DeliAddrDao deliaddrDaoImpl;

    @Resource(name = "provicedao")
    private ProviceDao proviceDaoImpl;

    @Resource(name = "citydao")
    private CityDao cityDaoImpl;

    @Resource(name = "areadao")
    private AreaDao areaDaoImpl;

    @Resource(name = "streetdao")
    private StreetDao streetDaoImpl;

    @RequestMapping("/iuser/deliaddrlist")
    public String iuserdeliaddrlist(HttpServletRequest request, HttpSession session) throws Exception {
        List<DeliAddr> deliaddrlist;

        try {
            DBuser dbuser = (DBuser) session.getAttribute("dbuser");

            deliaddrlist = deliaddrDaoImpl.getDeliAddrList(dbuser.getId());

            request.setAttribute("deliaddrlist", deliaddrlist);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "iuser/deliaddrlist";
    }

    @RequestMapping("/iuser/deliaddrinfo/{userid}/{orderno}")
    public String iuserdeliaddrinfo(HttpServletRequest request, HttpSession session, @PathVariable int userid, @PathVariable int orderno) throws Exception {
        DeliAddr deliaddrinfo;

        try {
            DBuser dbuser = (DBuser) session.getAttribute("dbuser");

            if (dbuser.getId() != userid) {
                return "/iuser/login";
            }
            deliaddrinfo = deliaddrDaoImpl.getDeliAddr(userid, orderno);
            List<ProvinceInfo> provinceList = proviceDaoImpl.getProviceList();
            List<CityInfo> cityList = cityDaoImpl.getCityListByParent(deliaddrinfo.getProvincecode());
            List<AreaInfo> areaList = areaDaoImpl.getAreaListByParent(deliaddrinfo.getCitycode());
            List<StreetInfo> streetList = streetDaoImpl.getStreetListByParent(deliaddrinfo.getAreacode());

            request.setAttribute("deliaddrinfo", deliaddrinfo);
            request.setAttribute("areaList", areaList);
            request.setAttribute("cityList", cityList);
            request.setAttribute("provinceList", provinceList);
            request.setAttribute("streetList", streetList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "iuser/deliaddrinfo";
    }

    @RequestMapping("/iuser/deliaddrsave")
    public String iuserdeliaddrsave(@RequestParam(value = "userid") int userid, @RequestParam(value = "orderno") int orderno, @RequestParam(value = "provincecode") String provincecode, @RequestParam(value = "citycode") String citycode, @RequestParam(value = "areacode") String areacode, @RequestParam(value = "consignee") String consignee, @RequestParam(value = "streetcode") String streetcode, @RequestParam(value = "detailinfo") String detailinfo, @RequestParam(value = "telno") String telno, @RequestParam(value = "isdefault", defaultValue = "0") int isdefault)
            throws Exception {
        boolean result;
        DeliAddr deliaddrinfo;
        try {
            deliaddrinfo = deliaddrDaoImpl.getDeliAddr(userid, orderno);

            deliaddrinfo.setProvincecode(provincecode);
            deliaddrinfo.setCitycode(citycode);
            deliaddrinfo.setAreacode(areacode);
            deliaddrinfo.setStreetcode(streetcode);
            deliaddrinfo.setDetailinfo(detailinfo);
            deliaddrinfo.setIsdefault(isdefault);
            deliaddrinfo.setTelno(telno);
            deliaddrinfo.setConsignee(consignee);

            result = deliaddrDaoImpl.update(deliaddrinfo);
        } catch (Exception e) {
            e.printStackTrace();
            return "sys/login";
        }

        return "redirect:/iuser/deliaddrinfo/" + deliaddrinfo.getUserid() + "/" + deliaddrinfo.getOrderno() + "?result=" + result;
    }


}
