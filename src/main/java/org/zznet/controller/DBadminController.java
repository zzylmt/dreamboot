package org.zznet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zznet.dao.DBadminDao;
import org.zznet.entity.DBadmin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by zz on 2016/9/28 14:20.
 */
@Controller
public class DBadminController {

    @Resource(name = "dbadmindao")
    private DBadminDao dbadminDaoImpl;

    @RequestMapping("/sys/login")
    public String syslogin(HttpServletRequest request,
                           @RequestParam(value = "username") String username,
                           @RequestParam(value = "pswd") String pswd) throws Exception {
        try {
            DBadmin admininfo;
            admininfo = dbadminDaoImpl.checkDBadmin(username, pswd);

            if (admininfo.getId() != 0) {
                HttpSession session = request.getSession();
                session.setAttribute("dbadmininfo", admininfo);
                session.setMaxInactiveInterval(60 * 60 * 24);
            } else {
                return "sys/login";
            }
        } catch (NullPointerException e) {
            e.printStackTrace();
            request.setAttribute("msg", "用户名或密码错误:" + username);
            return "sys/login";
        } catch (Exception e) {
            e.printStackTrace();
            return "sys/login";
        }

        return "sys/sysindex";
    }
}
