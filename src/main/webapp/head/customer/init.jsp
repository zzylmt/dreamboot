<%@ page language="java"
         import="com.zznet.entity.DBuser"
         pageEncoding="UTF-8" %>
<%
    boolean isLegal;
    DBuser jxuser = (DBuser) session.getAttribute("dbuser");

    int sid = 0;
    String sname = "";
    if (null != jxuser) {
        isLegal = true;
        if (jxuser != null) {
            sid = jxuser.getId();
            sname = jxuser.getUsername();
        }
    } else {
        isLegal = false;
    }

    if (!isLegal) {
%>
<jsp:forward page="${pageContext.request.contextPath}/login.jsp"/>
<%
    }
%>