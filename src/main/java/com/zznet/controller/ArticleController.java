package com.zznet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.zznet.dao.ArticleDao;
import com.zznet.dao.ColumnDao;
import com.zznet.entity.ArticleInfo;
import com.zznet.entity.ColumnInfo;
import com.zznet.entity.DBadmin;
import com.zznet.entity.ThePage;

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
public class ArticleController {
    @Resource(name = "articledao")
    private ArticleDao articleDaoImpl;

    @Resource(name = "columndao")
    private ColumnDao columnDaoImpl;

    @RequestMapping("/master/newarticle")
    public String masternewarticle(HttpSession session,HttpServletRequest request) {
        ArticleInfo articleInfo_old = new ArticleInfo();
        ArticleInfo articleInfo_new;
        try {
            articleInfo_old.setAtitle("请修改文章标题");
            articleInfo_old.setAtitle_min("请修改文章缩略标题");
            articleInfo_old.setAtext("请修改文章正文");
            articleInfo_old.setProfile("请修改文章概要");
            articleInfo_old.setAstatus(0);

            DBadmin admininfo = (DBadmin) session.getAttribute("dbadmininfo");

            articleInfo_old.setCreaterid(admininfo.getId());
            articleInfo_old.setCreatername(admininfo.getNickname());

            Calendar calendarstart = Calendar.getInstance();
            articleInfo_old.setCreatedatetime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(calendarstart
                    .getTime()));

            articleInfo_old.setColumnid(1);
            articleInfo_old.setGoodcount(0);
            articleInfo_old.setReadcount(0);
            articleInfo_old.setOrderscore(new BigDecimal(0.00));

            articleInfo_new = articleDaoImpl.addArticle(articleInfo_old);
            request.setAttribute("articleInfo", articleInfo_new);
        } catch (Exception e) {
            e.printStackTrace();
            return "master/login";
        }

        return "redirect:myarticleedit/" + articleInfo_new.getId();
    }

    @RequestMapping("/master/myarticlelist")
    public String masterarticlelist(HttpServletRequest request,HttpSession session, @RequestParam(value = "curpageno") int curpageno) {
        try {
            ThePage<ArticleInfo> articlepage = new ThePage<>();
            DBadmin admininfo = (DBadmin) session.getAttribute("dbadmininfo");

            if (curpageno != -1) {
                articlepage = articleDaoImpl.getArticleByDBadmin(admininfo.getId(), curpageno);
            }

            int prepage;
            int nextpage;
            if (articlepage.getCurrent() - 1 < 1) {
                prepage = 1;
            } else {
                prepage = articlepage.getCurrent() - 1;
            }

            if (articlepage.getCurrent() + 1 > articlepage.getTotalpages()) {
                nextpage = articlepage.getTotalpages();
            } else {
                nextpage = articlepage.getCurrent() + 1;
            }

            request.setAttribute("thelist", articlepage.getPageItems());
            request.setAttribute("totalpage", articlepage.getTotalpages());
            request.setAttribute("totalrecode", articlepage.getTotalrecord());
            request.setAttribute("currentpageno", articlepage.getCurrent());
            request.setAttribute("nextpage", nextpage);
            request.setAttribute("prepage", prepage);
        } catch (Exception e) {
            e.printStackTrace();
            return "master/login";
        }

        return "master/myarticlelist";
    }

    @RequestMapping("/master/myarticleedit/{aid}")
    public String mastermyarticleedit(HttpServletRequest request, @PathVariable int aid) {
        try {
            ArticleInfo articleInfo = articleDaoImpl.getArticle(aid);
            List<ColumnInfo> columnInfoList = columnDaoImpl.getColList();

            request.setAttribute("articleInfo", articleInfo);
            request.setAttribute("columnInfoList", columnInfoList);
        } catch (Exception e) {
            e.printStackTrace();
            return "master/login";
        }

        return "master/myarticleedit";
    }

    @RequestMapping("/master/articledel/{aid}")
    public String masterarticledel(@PathVariable int aid) {
        try {
            articleDaoImpl.delete(aid);
        } catch (Exception e) {
            e.printStackTrace();
            return "master/login";
        }

        return "redirect:/master/myarticlelist?curpageno=1";
    }

    @RequestMapping("/master/articlesave")
    public String masterarticlesave(
            @RequestParam(value = "atitle") String atitle,
            @RequestParam(value = "articleid") int articleid,
            @RequestParam(value = "atitle_min") String atitle_min,
            @RequestParam(value = "thumb_pic") String thumb_pic,
            @RequestParam(value = "atext") String atext,
            @RequestParam(value = "profile") String profile,
            @RequestParam(value = "astatus") int astatus,
            @RequestParam(value = "columnid") int columnid) {
        boolean result;
        try {
            ArticleInfo articleInfo_old = articleDaoImpl.getArticle(articleid);

            articleInfo_old.setAtitle(atitle);
            articleInfo_old.setAtitle_min(atitle_min);
            articleInfo_old.setThumb_pic(thumb_pic);
            articleInfo_old.setAtext(atext);
            articleInfo_old.setColumnid(columnid);
            articleInfo_old.setProfile(profile);
            articleInfo_old.setAstatus(astatus);
            result = articleDaoImpl.update(articleInfo_old);
        } catch (Exception e) {
            e.printStackTrace();
            return "master/login";
        }

        return "redirect:myarticleedit/" + articleid + "?result=" + result;
    }

    @RequestMapping("/articlebycol/{curpageno}/{cid}")
    public String articlebycollist(HttpServletRequest request, @PathVariable int curpageno, @PathVariable int cid) {
        try {
            ThePage<ArticleInfo> articlepage;
            articlepage = articleDaoImpl.getArticleByCol(cid, curpageno);

            int prepage;
            int nextpage;
            if (articlepage.getCurrent() - 1 < 1) {
                prepage = 1;
            } else {
                prepage = articlepage.getCurrent() - 1;
            }

            if (articlepage.getCurrent() + 1 > articlepage.getTotalpages()) {
                nextpage = articlepage.getTotalpages();
            } else {
                nextpage = articlepage.getCurrent() + 1;
            }

            request.setAttribute("thelist", articlepage.getPageItems());
            request.setAttribute("totalpage", articlepage.getTotalpages());
            request.setAttribute("totalrecode", articlepage.getTotalrecord());
            request.setAttribute("currentpageno", articlepage.getCurrent());
            request.setAttribute("nextpage", nextpage);
            request.setAttribute("prepage", prepage);
        } catch (Exception e) {
            e.printStackTrace();
            return "error/500";
        }

        return "articlebycol";
    }

}
