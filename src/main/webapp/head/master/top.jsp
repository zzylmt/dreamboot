<%@ page import="com.zznet.entity.DBadmin" pageEncoding="UTF-8" %>
<%
    boolean isLegal = false;
    DBadmin admininfo = (DBadmin) session.getAttribute("dbadmininfo");

    int sid = 0;
    String sname = "";
    int sroleid = 0;
    int suserlevel = 0;

    if (null != admininfo) {
        isLegal = true;
        if (admininfo != null) {
            sid = admininfo.getId();
            sname = admininfo.getNickname();
            sroleid = admininfo.getRoleid();
            suserlevel = admininfo.getUserlevel();
        }
    } else {
        isLegal = false;
    }
%>
<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">风格网络</a>
    <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link" href="#">退出</a>
        </li>
    </ul>
</nav>