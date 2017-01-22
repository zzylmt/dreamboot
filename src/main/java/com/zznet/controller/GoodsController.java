package com.zznet.controller;

import com.zznet.dao.DictDao;
import com.zznet.dao.GoodsClassDao;
import com.zznet.dao.GoodsDao;
import com.zznet.dao.MerchantDao;
import com.zznet.entity.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
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

    @Resource(name = "merchantdao")
    private MerchantDao merchantDaoImpl;

    @Resource(name = "goodsclassdao")
    private GoodsClassDao goodsclassDaoImpl;

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
    public String sysgoodsinfo(HttpServletRequest request, @PathVariable int gid) throws Exception {
        try {
            GoodsInfo goodsinfo = goodsDaoImpl.getGoods(gid);
            List<Dict> gstatusList = dictDaoImpl.getDictList("iStatus");
            List<GoodsClass> goodsclassList = goodsclassDaoImpl.getGoodsClass("");
            List<MerchantInfo> merchantlist = merchantDaoImpl.getMerchantByName("", 1).getPageItems();

            request.setAttribute("goodsinfo", goodsinfo);
            request.setAttribute("gstatusList", gstatusList);
            request.setAttribute("goodsclassList", goodsclassList);
            request.setAttribute("merchantlist", merchantlist);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "sys/goodsedit";
    }

    @RequestMapping("/sys/goodssave")
    public String sysgoodssave(@RequestParam(value = "gid") int gid,
                               @RequestParam(value = "goodspic") String goodspic,
                               @RequestParam(value = "goodstitle") String goodstitle,
                               @RequestParam(value = "goodsname") String goodsname,
                               @RequestParam(value = "memo") String memo,
                               @RequestParam(value = "gprice") BigDecimal gprice,
                               @RequestParam(value = "salesurl") String salesurl,
                               @RequestParam(value = "merchantid") int merchantid,
                               @RequestParam(value = "goodsclass") int goodsclass,
                               @RequestParam(value = "gstatus") int gstatus) throws Exception {
        boolean result;
        GoodsInfo goodsinfo;
        try {
            goodsinfo = goodsDaoImpl.getGoods(gid);
            
            goodsinfo.setGprice(gprice);
            goodsinfo.setGoodspic(goodspic);
            goodsinfo.setGoodstitle(goodstitle);
            goodsinfo.setGoodsname(goodsname);
            goodsinfo.setMemo(memo);
            goodsinfo.setSalesurl(salesurl);
            goodsinfo.setMerchantid(merchantid);
            goodsinfo.setGstatus(gstatus);
            goodsinfo.setGoodsclass(goodsclass);

            result = goodsDaoImpl.update(goodsinfo);
        } catch (Exception e) {
            e.printStackTrace();
            return "sys/login";
        }
        return "redirect:/sys/goodsinfo/" + goodsinfo.getId() + "?result=" + result;
    }
}