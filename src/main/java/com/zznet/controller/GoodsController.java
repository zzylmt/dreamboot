package com.zznet.controller;

import com.zznet.dao.DictDao;
import com.zznet.dao.GoodsDao;
import com.zznet.entity.Dict;
import com.zznet.entity.GoodsInfo;
import com.zznet.entity.ThePage;
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
public class GoodsController {
    @Resource(name = "goodsdao")
    private GoodsDao goodsDaoImpl;

    @Resource(name = "dictdao")
    private DictDao dictDaoImpl;

    @RequestMapping("/sys/mygoodslist")
    public String sysmygoodslist(HttpServletRequest request, @RequestParam(value = "createrid") int createrid, @RequestParam(value = "curpageno") int curpageno) throws Exception {
        try {
            ThePage<GoodsInfo> goodspage = new ThePage<>();

            if (curpageno != -1) {
                goodspage = goodsDaoImpl.getGoodsPageByCreater(createrid, curpageno);
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

        return "sys/mygoodslist";
    }

    @RequestMapping("/sys/goodsinfo/{gid}")
    public String sysgoodssave(HttpServletRequest request, @PathVariable int gid) throws Exception {
        try {
            GoodsInfo goodsinfo = goodsDaoImpl.getGoods(gid);
            List<Dict> gstatusList = dictDaoImpl.getDictList("iStatus");


            request.setAttribute("goodsinfo", goodsinfo);
            request.setAttribute("gstatusList", gstatusList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "sys/goodsedit";
    }

}