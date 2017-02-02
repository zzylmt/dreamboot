<%@ page language="java"
         import="com.zznet.entity.DBuser"
         pageEncoding="UTF-8" %>
<%
    boolean isLegal;
    DBuser dbuser = (DBuser) session.getAttribute("dbuser");

    int sid = 0;
    String sname = "";
    if (null != dbuser) {
        isLegal = true;
        if (dbuser != null) {
            sid = dbuser.getId();
            sname = dbuser.getUsername();
        }
    } else {
        isLegal = false;
    }

    if (!isLegal) {
%>
<jsp:forward page="${pageContext.request.contextPath}/iuser/login.jsp"/>
<%
    }
%>