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
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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

    @RequestMapping("/master/newgoods")
    public String masternewgoods(HttpSession session, HttpServletRequest request) {
        GoodsInfo goodsinfo_old = new GoodsInfo();
        GoodsInfo goodsinfo_new;
        try {
            goodsinfo_old.setGoodstitle("商品标题");
            goodsinfo_old.setGoodsname("商品名");
            goodsinfo_old.setMemo("商品描述");
            goodsinfo_old.setGprice(new BigDecimal(1));

            DBadmin admininfo = (DBadmin) session.getAttribute("dbadmininfo");

            goodsinfo_old.setCreaterid(admininfo.getId());

            Calendar calendarstart = Calendar.getInstance();
            goodsinfo_old.setCreatedate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(calendarstart.getTime()));

            goodsinfo_old.setGoodcount(0);
            goodsinfo_old.setReadcount(0);
            goodsinfo_old.setScore(new BigDecimal(0));
            goodsinfo_old.setGstatus(0);
            goodsinfo_new = goodsDaoImpl.addGoods(goodsinfo_old);
            request.setAttribute("goodsinfo", goodsinfo_new);
        } catch (Exception e) {
            e.printStackTrace();
            return "master/login";
        }

        return "redirect:/master/goodsinfo/" + goodsinfo_new.getId();
    }

    @RequestMapping("/master/mygoodslist")
    public String mastermygoodslist(HttpServletRequest request, @RequestParam(value = "createrid") int createrid, @RequestParam(value = "curpageno") int curpageno) {
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
            return "master/login";
        }

        return "master/mygoodslist";
    }

    @RequestMapping("/master/goodsinfo/{gid}")
    public String mastergoodsinfo(HttpServletRequest request, @PathVariable int gid) {
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
        return "master/goodsedit";
    }

    @RequestMapping("/master/goodssave")
    public String mastergoodssave(@RequestParam(value = "gid") int gid,
                               @RequestParam(value = "goodspic") String goodspic,
                               @RequestParam(value = "goodstitle") String goodstitle,
                               @RequestParam(value = "goodsname") String goodsname,
                               @RequestParam(value = "memo") String memo,
                               @RequestParam(value = "gprice") BigDecimal gprice,
                               @RequestParam(value = "salesurl") String salesurl,
                               @RequestParam(value = "merchantid") int merchantid,
                               @RequestParam(value = "goodsclass") int goodsclass,
                               @RequestParam(value = "gstatus") int gstatus) {
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
            return "master/login";
        }
        return "redirect:/master/goodsinfo/" + goodsinfo.getId() + "?result=" + result;
    }
}