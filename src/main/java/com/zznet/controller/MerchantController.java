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