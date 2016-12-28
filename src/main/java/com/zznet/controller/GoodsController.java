package com.zznet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.zznet.dao.GoodsDao;
import com.zznet.entity.GoodsInfo;
import com.zznet.entity.ThePage;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by zz on 2016/10/1.
 */
@Controller
public class GoodsController {
    @Resource(name = "goodsdao")
    private GoodsDao goodsDaoImpl;

    @RequestMapping("/sys/goodslist")
    public String sysarticlelist(HttpServletRequest request, @RequestParam(value = "createrid") int createrid, @RequestParam(value = "curpageno") int curpageno) throws Exception {
        System.out.println("createrid:"+createrid);

        try {
            ThePage<GoodsInfo> goodspage = new ThePage<>();

            if (curpageno != -1) {
                goodspage = goodsDaoImpl.getAreaPageByCreater(createrid, curpageno);
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
        } catch (Exception e) {
            e.printStackTrace();
            return "sys/login";
        }

        return "sys/goodslist";
    }
}