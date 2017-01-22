<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../head/master/init.jsp" %>
<%
    String result = request.getParameter("result");
%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>商户编辑--江西风格网络后台管理系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/select2/css/select2.min.css">
    <jsp:include page="${pageContext.request.contextPath}/head/master/css.jsp"/>
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="${pageContext.request.contextPath}/head/master/top.jsp"/>
    <jsp:include page="${pageContext.request.contextPath}/head/master/left.jsp">
        <jsp:param name="parentnode" value="3"/>
        <jsp:param name="childnode" value="2"/>
    </jsp:include>

    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                商户信息编辑
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
                <li><a href="#"><i class="fa fa-dashboard"></i> 商户编辑</a></li>
            </ol>
        </section>
        <section class="content">
            <form action="${pageContext.request.contextPath}/sys/merchantsave" class="form-horizontal" method="post"
                  id="goodsform">
                <input type="hidden" id="mid" name="mid" value="${merchantinfo.id }">
                <div class="form-group">
                    <label for="merchantname" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        商品名:</label>
                    <div class="col-md-5">
                        <input type="text" class="form-control" id="merchantname" name="merchantname" placeholder="商户名" value="${merchantinfo.merchantname }">
                    </div>
                    <label for="cocid" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        所属商会:</label>
                    <div class="col-md-5">
                        <select class="select2-data-array form-control" id="cocid" name="cocid" autocomplete="off">
                            <option value="0">--请选择--</option>
                            <c:forEach items="${coclist}" var="coclist">
                                <option value="${coclist.id}" <c:choose>
                                    <c:when test="${coclist.id==merchantinfo.cocid }">selected="selected"</c:when>
                                </c:choose>>${coclist.cocname}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label for="province_code" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        省份:</label>
                    <div class="col-md-5">
                        <select class="select2-data-array form-control" id="province_code" name="province_code" autocomplete="off">
                            <c:forEach items="${provinceList}" var="provinceList">
                                <option value="${provinceList.code}" <c:choose>
                                    <c:when test="${provinceList.code==merchantinfo.province_code }">selected="selected"</c:when>
                                </c:choose>>${provinceList.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label for="city_code" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        市:</label>
                    <div class="col-md-5">
                        <select class="select2-data-array form-control" id="city_code" name="city_code" autocomplete="off">
                            <c:forEach items="${cityList}" var="cityList">
                                <option value="${cityList.code}" <c:choose>
                                    <c:when test="${cityList.code==merchantinfo.city_code }">selected="selected"</c:when>
                                </c:choose>>${cityList.name}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <label for="area_code" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        区/县:</label>
                    <div class="col-md-5">
                        <select class="select2-data-array form-control" id="area_code" name="area_code" autocomplete="off">
                            <c:forEach items="${areaList}" var="areaList">
                                <option value="${areaList.code}" <c:choose>
                                    <c:when test="${areaList.code==merchantinfo.area_code }">selected="selected"</c:when>
                                </c:choose>>${areaList.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-5 col-md-offset-1">
                        <img id="pic1img" src="${merchantinfo.headpic }" height="80" width="100">
                        <input type="hidden" id="headpic" name="headpic" value="${merchantinfo.headpic }">
                        <input type="button" id="pic1" name="pic1" class="btn btn-sm btn-primary btn-flat"
                               value="选择展示缩略图">
                    </div>

                    <label for="mstatus" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        状态:</label>
                    <div class="col-md-5">
                        <select class="select2-data-array form-control" id="mstatus" name="mstatus" autocomplete="off">
                            <c:forEach items="${mstatusList}" var="mstatusList">
                                <option value="${mstatusList.typevalue}" <c:choose>
                                    <c:when test="${mstatusList.typevalue==merchantinfo.mstatus }">selected="selected"</c:when>
                                </c:choose>>${mstatusList.typename}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="contact" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        联系人:</label>
                    <div class="col-md-5">
                        <input type="text" class="form-control" id="contact" name="contact" placeholder="联系人" value="${merchantinfo.contact }">
                    </div>
                    <label for="telno" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        联系电话:</label>
                    <div class="col-md-5">
                        <input type="text" class="form-control" id="telno" name="telno" placeholder="联系电话" value="${merchantinfo.telno }">
                    </div>
                </div>

                <div class="form-group">
                    <label for="addr" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        联系人:</label>
                    <div class="col-md-11">
                        <input type="text" class="form-control" id="addr" name="addr" placeholder="地址" value="${merchantinfo.addr }">
                    </div>
                </div>

                <div class="form-group">
                    <label for="memo" class="col-md-1 control-label"><i
                            class="fa fa-fw fa-pencil-square-o"></i>
                        简介:</label>
                    <div class="col-md-11">
                        <textarea class="form-control" id="memo" name="memo">${merchantinfo.memo}</textarea>
                    </div>
                </div>

                <button class="btn btn-primary btn-flat" id="savebtn">保存</button>
            </form>
        </section>
    </div>
</div>
</body>
<jsp:include page="${pageContext.request.contextPath}/head/master/js.jsp"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/select2/js/select2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/select2/js/i18n/zh-CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/kindeditor/kindeditor-all-min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/kindeditor/lang/zh_CN.js"></script>

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

        $("#province_code").on("change", function () {
            $("#city_code").empty();
            $.ajax({
                url: "${pageContext.request.contextPath}/getcitylist/" + $("#province_code").val(),
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
                    $("#city_code").append(str);
                }
            });
        });
        $("#city_code").on("change", function () {
            $("#area_code").empty();
            $.ajax({
                url: "${pageContext.request.contextPath}/getarealist/" + $("#city_code").val(),
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
                    $("#area_code").append(str);
                }
            });
        });
        KindEditor.ready(function (K) {
            var editor = K.editor({
                resizeType: 1,
                autoHeightMode: true,
                uploadJson: '${pageContext.request.contextPath}/sys/upload_json.jsp'
            });

            K('#pic1').click(function () {
                editor.loadPlugin('image', function () {
                    editor.plugin.imageDialog({
                        showRemote: false,
                        imageUrl: K('#pic1img').val(),
                        clickFn: function (url) {
                            $('#pic1img').attr("src", url);
                            $('#merchantpic').val(url);
                            editor.hideDialog();
                        }
                    });
                });
            });

            K.create('textarea[name="memo"]', {
                resizeType: 1,
                autoHeightMode: true,
                uploadJson: "${pageContext.request.contextPath}/sys/upload_json.jsp",
                fileManagerJson: "${pageContext.request.contextPath}/sys/file_manager_json.jsp",
                allowFileManager: true,
                afterBlur: function () {
                    this.sync();
                }
            });
        });

        $("#savebtn").on("click", function () {
            $("#cocform").submit();
        });
    });
</script>
</html>
