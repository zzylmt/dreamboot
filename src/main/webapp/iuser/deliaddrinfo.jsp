<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../head/customer/init.jsp" %>
<%
    String result = request.getParameter("result");
%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>收货地址详情--风格网络</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/select2/css/select2.min.css">
    <jsp:include page="/head/customer/css.jsp"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="/head/customer/top.jsp"/>
    <jsp:include page="/head/customer/left.jsp"/>

    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                收货地址详情
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
            </ol>
        </section>
        <section class="content">
            <div class="box box-default">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <form action="${pageContext.request.contextPath}/iuser/deliaddrsave" class="form-horizontal"
                                  method="post"
                                  id="profitform">
                                <input type="hidden" id="userid" name="userid" value="${deliaddrinfo.userid }">
                                <input type="hidden" id="orderno" name="orderno" value="${deliaddrinfo.orderno }">
                                <div class="form-group">
                                    <label for="consignee" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        收货人:</label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" id="consignee" name="consignee"
                                               placeholder="收货人"
                                               value="${deliaddrinfo.consignee }">
                                    </div>
                                    <label for="telno" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        电话:</label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" id="telno" name="telno"
                                               placeholder="电话"
                                               value="${deliaddrinfo.telno }">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="provincecode" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        省:</label>
                                    <div class="col-md-4">
                                        <select class="select2-data-array form-control" id="provincecode" name="provincecode" autocomplete="off">
                                            <c:forEach items="${provinceList}" var="provinceList">
                                                <option value="${provinceList.code}" <c:choose>
                                                    <c:when test="${provinceList.code==deliaddrinfo.provincecode }">selected="selected"</c:when>
                                                </c:choose>>${provinceList.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <label for="citycode" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        市/地区:</label>
                                    <div class="col-md-4">
                                        <select class="select2-data-array form-control" id="citycode" name="citycode" autocomplete="off">
                                            <c:forEach items="${cityList}" var="cityList">
                                                <option value="${cityList.code}" <c:choose>
                                                    <c:when test="${cityList.code==deliaddrinfo.citycode }">selected="selected"</c:when>
                                                </c:choose>>${cityList.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="areacode" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        县:</label>
                                    <div class="col-md-4">
                                        <select class="select2-data-array form-control" id="areacode" name="areacode" autocomplete="off">
                                            <c:forEach items="${areaList}" var="areaList">
                                                <option value="${areaList.code}" <c:choose>
                                                    <c:when test="${areaList.code==deliaddrinfo.areacode }">selected="selected"</c:when>
                                                </c:choose>>${areaList.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <label for="streetcode" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        街道:</label>
                                    <div class="col-md-4">
                                        <select class="select2-data-array form-control" id="streetcode" name="streetcode" autocomplete="off">
                                            <c:forEach items="${streetList}" var="streetList">
                                                <option value="${streetList.code}" <c:choose>
                                                    <c:when test="${streetList.code==deliaddrinfo.streetcode }">selected="selected"</c:when>
                                                </c:choose>>${streetList.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="detailinfo" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        详细地址:</label>
                                    <div class="col-md-10">
                                        <input id="detailinfo" name="detailinfo" type="text" class="form-control" placeholder="详细地址" value="${deliaddrinfo.detailinfo}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="isdefault" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        是否设置为默认地址:</label>
                                    <div class="col-md-10">
                                        <select class="select2-data-array form-control" id="isdefault" name="isdefault" autocomplete="off">
                                            <option value="0" <c:choose>
                                                <c:when test="${0==deliaddrinfo.isdefault }">selected="selected"</c:when>
                                            </c:choose>>否</option>
                                            <option value="1" <c:choose>
                                                <c:when test="${1==deliaddrinfo.isdefault }">selected="selected"</c:when>
                                            </c:choose>>是</option>
                                        </select>

                                    </div>
                                </div>
                            </form>

                            <div class="box-footer">
                                <button id="infosave_btn" type="submit" class="btn btn-primary pull-right">保存</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
</body>
<jsp:include page="/head/customer/js.jsp"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/select2/js/select2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/select2/js/i18n/zh-CN.js"></script>
<script type="text/javascript">
    $(function () {
        var result = String("<%=result%>");

        if (result != "null") {
            if (result == "true") {
                alert("修改成功");
            } else {
                alert("修改失败");
            }
        }

        $(".select2-data-array").select2();

        $("#provincecode").on("change", function () {
            $("#citycode").empty().append("<option value='0'>--请选择--</option>");
            $("#areacode").empty().append("<option value='0'>--请选择--</option>");
            $("#streetcode").empty().append("<option value='0'>--请选择--</option>");

            $.ajax({
                url: "${pageContext.request.contextPath}/getcitylist/" + $("#provincecode").val(),
                contentType: "application/json",
                type: "post",
                dataType: "json",
                timeout: 500000,
                error: function (xmlHttpRequest, error) {
                    alert("请求失败");
                },
                success: function (data) {
                    var str = "";
                    $.each(data.cityList, function (n, value) {
                        str +="<option value='"+ value.code +"'>" + value.name + "</option>";
                    });
                    $("#citycode").append(str);
                }
            });
        });

        $("#citycode").on("change", function () {
            $("#areacode").empty().append("<option value='0'>--请选择--</option>");
            $("#streetcode").empty().append("<option value='0'>--请选择--</option>");
            $.ajax({
                url: "${pageContext.request.contextPath}/getarealist/" + $("#citycode").val(),
                contentType: "application/json",
                type: "post",
                dataType: "json",
                timeout: 500000,
                error: function (xmlHttpRequest, error) {
                    alert("请求失败");
                },
                success: function (data) {
                    var str = "";
                    $.each(data.areaList, function (n, value) {
                        str +="<option value='"+ value.code +"'>" + value.name + "</option>";
                    });
                    $("#areacode").append(str);
                }
            });
        });

        $("#areacode").on("change", function () {
            $("#streetcode").empty().append("<option value='0'>--请选择--</option>");
            $.ajax({
                url: "${pageContext.request.contextPath}/getstreetlist/" + $("#areacode").val(),
                contentType: "application/json",
                type: "post",
                dataType: "json",
                timeout: 500000,
                error: function (xmlHttpRequest, error) {
                    alert("请求失败");
                },
                success: function (data) {
                    var str = "";
                    $.each(data.streetlist, function (n, value) {
                        str +="<option value='"+ value.code +"'>" + value.name + "</option>";
                    });
                    $("#streetcode").append(str);
                }
            });
        });

        $("#infosave_btn").on("click", function () {
            $("#profitform").submit();
        });
    });
</script>
</html>