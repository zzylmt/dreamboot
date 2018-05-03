<%@ page import="com.zznet.entity.DBadmin" pageEncoding="UTF-8" %>
<%
    boolean isLegal;
    DBadmin admininfo = (DBadmin) session.getAttribute("dbadmininfo");

    int sid = 0;
    String sname = "";
    if (null != admininfo) {
        isLegal = true;
        if (admininfo != null) {
            sid = admininfo.getId();
            sname = admininfo.getUsername();
        }
    } else {
        isLegal = false;
    }

    if (!isLegal) {
%>
<jsp:forward page="${pageContext.request.contextPath}/master/"/>
<%
    }
%>