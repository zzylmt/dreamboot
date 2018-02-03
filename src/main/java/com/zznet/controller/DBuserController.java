package com.zznet.controller;

import com.zznet.dao.DBuserDao;
import com.zznet.entity.DBuser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;

/**
 * Created by zz on 2017/2/2.
 */
@Controller
public class DBuserController {
    @Resource(name = "dbuserdao")
    private DBuserDao dbuserDaoImpl;

    @RequestMapping("/iuser/login")
    public String iuserlogin(HttpServletRequest request,
                             @RequestParam(value = "username") String username,
                             @RequestParam(value = "pswd") String pswd) {
        try {
            DBuser dbuser;
            dbuser = dbuserDaoImpl.checkDBuser(username, pswd);

            if (dbuser.getId() != 0) {
                HttpSession session = request.getSession();
                session.setAttribute("dbuser", dbuser);
                session.setMaxInactiveInterval(60 * 60 * 24);
            } else {
                return "iuser/login";
            }

        } catch (NullPointerException e) {
            e.printStackTrace();
            request.setAttribute("msg", "用户名或密码错误:" + username);
            return "iuser/login";
        } catch (Exception e) {
            e.printStackTrace();
            return "iuser/login";
        }

        return "iuser/index";
    }

    @RequestMapping("/iuser/userinfo/{userid}")
    public String iuserinfo(HttpServletRequest request,
                            @PathVariable int userid) {
        try {
            DBuser dbuser = dbuserDaoImpl.getDBuser(userid);
            request.setAttribute("dbuser", dbuser);
        } catch (Exception e) {
            e.printStackTrace();
            return "iuser/login";
        }

        return "iuser/userinfo";
    }

    @RequestMapping("/iuser/dbusersave")
    public String iuserdbusersave(
            @RequestParam(value = "userid") int userid,
            @RequestParam(value = "username") String username,
            @RequestParam(value = "pswd") String pswd,
            @RequestParam(value = "repswd") String repswd,
            @RequestParam(value = "qq") String qq,
            @RequestParam(value = "nickname") String nickname,
            @RequestParam(value = "addr") String addr,
            @RequestParam(value = "score") BigDecimal score,
            @RequestParam(value = "mobileno") String mobileno,
            @RequestParam(value = "headpic",required = false) String headpic,
            @RequestParam(value = "wx") String wx,
            @RequestParam(value = "email") String email, HttpSession session) {
        DBuser dbuser = dbuserDaoImpl.getDBuser(userid);

        if (!"".equalsIgnoreCase(pswd) && pswd.equals(repswd)) {
            dbuser.setPswd(pswd);
        }

        boolean result;
        try {
            dbuser.setUsername(username);
            dbuser.setQq(qq);
            dbuser.setNickname(nickname);
            dbuser.setAddr(addr);
            dbuser.setMobileno(mobileno);
            dbuser.setEmail(email);
            dbuser.setScore(score);
            dbuser.setHeadpic(headpic);
            dbuser.setWx(wx);

            result = dbuserDaoImpl.update(dbuser);
            session.setAttribute("dbuser", dbuser);
        } catch (Exception e) {
            e.printStackTrace();
            return "/iuser/login";
        }
        return "redirect:/iuser/userinfo/" + dbuser.getId() + "?result=" + result;
    }

}
