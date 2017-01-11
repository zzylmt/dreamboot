package com.zznet.controller;

import com.zznet.dao.CoCDao;
import com.zznet.entity.CoCInfo;
import com.zznet.entity.ThePage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by zz on 2017/1/11.
 */
@Controller
public class CoCController {
    @Resource(name = "cocdao")
    private CoCDao cocDaoImpl;

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
}
