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
    <title>商会编辑--江西风格网络后台管理系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/select2/css/select2.min.css">
    <jsp:include page="${pageContext.request.contextPath}/head/master/css.jsp"/>
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="${pageContext.request.contextPath}/head/master/top.jsp"/>
    <jsp:include page="${pageContext.request.contextPath}/head/master/left.jsp">
        <jsp:param name="parentnode" value="2"/>
        <jsp:param name="childnode" value="2"/>
    </jsp:include>

    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                商会信息编辑
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
                <li><a href="#"><i class="fa fa-dashboard"></i> 商会编辑</a></li>
            </ol>
        </section>
        <section class="content">
            <form action="${pageContext.request.contextPath}/sys/cocsave" class="form-horizontal" method="post"
                  id="cocform">
                <input type="hidden" id="cocid" name="cocid" value="${cocinfo.id }">
                <div class="form-group">
                    <label for="cocname" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        商会名:</label>
                    <div class="col-md-5">
                        <input type="text" class="form-control" id="cocname" name="cocname" placeholder="商会名" value="${cocinfo.cocname }">
                    </div>
                    <label for="province_code" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        省份:</label>
                    <div class="col-md-5">
                        <select class="select2-data-array form-control" id="province_code" name="province_code" autocomplete="off">
                            <c:forEach items="${provinceList}" var="provinceList">
                                <option value="${provinceList.code}" <c:choose>
                                    <c:when test="${provinceList.code==cocinfo.province_code }">selected="selected"</c:when>
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
                                    <c:when test="${cityList.code==cocinfo.city_code }">selected="selected"</c:when>
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
                                    <c:when test="${areaList.code==cocinfo.area_code }">selected="selected"</c:when>
                                </c:choose>>${areaList.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="form-group">

                    <div class="col-md-5 col-md-offset-1">
                        <img id="pic1img" src="${cocinfo.headpic }" height="80" width="100">
                        <input type="hidden" id="headpic" name="headpic" value="${cocinfo.headpic }">
                        <input type="button" id="pic1" name="pic1" class="btn btn-sm btn-primary btn-flat"
                               value="选择展示缩略图">
                    </div>

                    <label for="cstatus" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        状态:</label>
                    <div class="col-md-5">
                        <select class="select2-data-array form-control" id="cstatus" name="cstatus" autocomplete="off">
                            <c:forEach items="${cstatusList}" var="cstatusList">
                                <option value="${cstatusList.typevalue}" <c:choose>
                                    <c:when test="${cstatusList.typevalue==cocinfo.cstatus }">selected="selected"</c:when>
                                </c:choose>>${cstatusList.typename}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="contact" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        联系人:</label>
                    <div class="col-md-5">
                        <input type="text" class="form-control" id="contact" name="contact" placeholder="联系人" value="${cocinfo.contact }">
                    </div>
                    <label for="telno" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        联系电话:</label>
                    <div class="col-md-5">
                        <input type="text" class="form-control" id="telno" name="telno" placeholder="联系电话" value="${cocinfo.telno }">
                    </div>
                </div>

                <div class="form-group">
                    <label for="addr" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        地址:</label>
                    <div class="col-md-11">
                        <input type="text" class="form-control" id="addr" name="addr" placeholder="地址" value="${cocinfo.addr }">
                    </div>
                </div>

                <div class="form-group">
                    <label for="memo" class="col-md-1 control-label"><i
                            class="fa fa-fw fa-pencil-square-o"></i>
                        简介:</label>
                    <div class="col-md-11">
                        <textarea class="form-control" id="memo" name="memo">${cocinfo.memo}</textarea>
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
                            $('#headpic').val(url);
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