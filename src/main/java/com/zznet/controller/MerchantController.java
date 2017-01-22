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
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

/**
 * Created by zz on 2016/10/1.
 */
@Controller
public class MerchantController {
    @Resource(name = "cocdao")
    private CoCDao cocDaoImpl;

    @Resource(name = "merchantdao")
    private MerchantDao merchantDaoImpl;

    @Resource(name = "provicedao")
    private ProviceDao proviceDaoImpl;

    @Resource(name = "citydao")
    private CityDao cityDaoImpl;

    @Resource(name = "areadao")
    private AreaDao areaDaoImpl;

    @Resource(name = "dictdao")
    private DictDao dictDaoImpl;

    @RequestMapping("/sys/merchantsave")
    public String sysmerchantsave(HttpServletRequest request, @RequestParam(value = "mid") int mid, @RequestParam(value = "merchantname") String merchantname, @RequestParam(value = "cocid") int cocid, @RequestParam(value = "province_code") String
            province_code, @RequestParam(value = "city_code") String city_code, @RequestParam(value = "area_code") String area_code, @RequestParam(value = "memo")
                                          String memo, @RequestParam(value = "headpic") String headpic, @RequestParam(value = "contact") String contact,
                                  @RequestParam(value = "telno") String telno, @RequestParam(value = "addr") String addr, @RequestParam(value = "mstatus") int mstatus)
            throws Exception {
        MerchantInfo merchantinfo;
        boolean result;
        try {
            merchantinfo = merchantDaoImpl.getMerchant(mid);

            merchantinfo.setMerchantname(merchantname);
            merchantinfo.setProvince_code(province_code);
            merchantinfo.setArea_code(area_code);
            merchantinfo.setCity_code(city_code);
            merchantinfo.setMemo(memo);
            merchantinfo.setHeadpic(headpic);
            merchantinfo.setContact(contact);
            merchantinfo.setTelno(telno);
            merchantinfo.setAddr(addr);
            merchantinfo.setCocid(cocid);
            merchantinfo.setMstatus(mstatus);

            result = merchantDaoImpl.update(merchantinfo);
        } catch (Exception e) {
            e.printStackTrace();
            return "sys/login";
        }

        return "redirect:/sys/merchantinfo/" + merchantinfo.getId() + "?result=" + result;
    }

    @RequestMapping("/sys/newMerchant")
    public String sysnewMerchant(HttpSession session, HttpServletRequest request)
            throws Exception {
        MerchantInfo merchantinfo_old = new MerchantInfo();
        MerchantInfo merchantinfo_new;
        try {
            merchantinfo_old.setMerchantname("商户名");
            merchantinfo_old.setProvince_code("360000");
            merchantinfo_old.setArea_code("361000");
            merchantinfo_old.setCity_code("360101");
            merchantinfo_old.setMemo("商户介绍");
            merchantinfo_old.setAddr("地址");
            merchantinfo_old.setMstatus(0);

            DBadmin admininfo = (DBadmin) session.getAttribute("dbadmininfo");
            merchantinfo_old.setCreaterid(admininfo.getId());

            Calendar calendarstart = Calendar.getInstance();
            merchantinfo_old.setCreatedate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(calendarstart.getTime()));

            merchantinfo_new = merchantDaoImpl.addMerchant(merchantinfo_old);
            request.setAttribute("merchantinfo", merchantinfo_new);
        } catch (Exception e) {
            e.printStackTrace();
            return "sys/login";
        }

        return "redirect:/sys/merchantinfo/" + merchantinfo_new.getId();
    }

    @RequestMapping("/sys/merchantlist")
    public String sysmerchantlist(HttpServletRequest request, @RequestParam(value = "mername") String mername, @RequestParam(value = "curpageno") int
            curpageno)
            throws Exception {
        try {
            ThePage<MerchantInfo> merchantpage = new ThePage<>();

            if (curpageno != -1) {
                merchantpage = merchantDaoImpl.getMerchantByName(mername, curpageno);
            }

            int prepage;
            int nextpage;
            if (merchantpage.getCurrent() - 1 < 1) {
                prepage = 1;
            } else {
                prepage = merchantpage.getCurrent() - 1;
            }

            if (merchantpage.getCurrent() + 1 > merchantpage.getTotalpages()) {
                nextpage = merchantpage.getTotalpages();
            } else {
                nextpage = merchantpage.getCurrent() + 1;
            }

            request.setAttribute("thelist", merchantpage.getPageItems());
            request.setAttribute("totalpage", merchantpage.getTotalpages());
            request.setAttribute("totalrecode", merchantpage.getTotalrecord());
            request.setAttribute("currentpageno", merchantpage.getCurrent());
            request.setAttribute("nextpage", nextpage);
            request.setAttribute("prepage", prepage);

            request.setAttribute("mername", mername);
        } catch (Exception e) {
            e.printStackTrace();
            return "sys/login";
        }

        return "sys/merchantlist";
    }

    @RequestMapping("/sys/merchantinfo/{gid}")
    public String sysmerchantinfo(HttpServletRequest request, @PathVariable int gid) throws Exception {
        try {
            MerchantInfo merchantinfo = merchantDaoImpl.getMerchant(gid);

            List<CoCInfo> coclist = cocDaoImpl.getCoCList();
            List<Dict> mstatusList = dictDaoImpl.getDictList("iStatus");
            List<ProvinceInfo> provinceList = proviceDaoImpl.getProviceList();
            List<CityInfo> cityList = cityDaoImpl.getCityListByParent(merchantinfo.getProvince_code());
            List<AreaInfo> areaList = areaDaoImpl.getAreaListByParent(merchantinfo.getCity_code());

            request.setAttribute("merchantinfo", merchantinfo);
            request.setAttribute("mstatusList", mstatusList);
            request.setAttribute("provinceList", provinceList);
            request.setAttribute("cityList", cityList);
            request.setAttribute("areaList", areaList);
            request.setAttribute("coclist", coclist);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "sys/merchantedit";
    }

}