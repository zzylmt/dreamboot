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
    <title>商品编辑--江西风格网络后台管理系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/select2/css/select2.min.css">
    <jsp:include page="/head/master/css.jsp"/>
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="/head/master/top.jsp"/>
    <jsp:include page="/head/master/left.jsp">
        <jsp:param name="parentnode" value="5"/>
        <jsp:param name="childnode" value="2"/>
    </jsp:include>

    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                商品信息编辑
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
                <li><a href="#"><i class="fa fa-dashboard"></i> 商会编辑</a></li>
            </ol>
        </section>
        <section class="content">
            <form action="${pageContext.request.contextPath}/sys/goodssave" class="form-horizontal" method="post" id="goodsform">
                <input type="hidden" id="gid" name="gid" value="${goodsinfo.id }">
                <div class="form-group">
                    <label for="goodsname" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        商品名:</label>
                    <div class="col-md-5">
                        <input type="text" class="form-control" id="goodsname" name="goodsname" placeholder="商会名" value="${goodsinfo.goodsname }">
                    </div>
                    <label for="goodstitle" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        标题:</label>
                    <div class="col-md-5">
                        <input type="text" class="form-control" id="goodstitle" name="goodstitle" placeholder="标题" value="${goodsinfo.goodstitle }">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-5 col-md-offset-1">
                        <img id="pic1img" src="${goodsinfo.goodspic }" height="80" width="100">
                        <input type="hidden" id="goodspic" name="goodspic" value="${goodsinfo.goodspic }">
                        <input type="button" id="pic1" name="pic1" class="btn btn-sm btn-primary btn-flat"
                               value="选择展示缩略图">
                    </div>

                    <label for="gstatus" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        状态:</label>
                    <div class="col-md-5">
                        <select class="select2-data-array form-control" id="gstatus" name="gstatus" autocomplete="off">
                            <c:forEach items="${gstatusList}" var="gstatusList">
                                <option value="${gstatusList.typevalue}" <c:choose>
                                    <c:when test="${gstatusList.typevalue==goodsinfo.gstatus }">selected="selected"</c:when>
                                </c:choose>>${gstatusList.typename}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="gprice" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        价格:</label>
                    <div class="col-md-5">
                        <input type="text" class="form-control" id="gprice" name="gprice" placeholder="价格" value="${goodsinfo.gprice}">
                    </div>
                    <label for="merchantid" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        所属商户:</label>
                    <div class="col-md-5">
                        <select class="select2-data-array form-control" id="merchantid" name="merchantid" autocomplete="off">
                            <c:forEach items="${merchantlist}" var="merchantlist">
                                <option value="${merchantlist.id}" <c:choose>
                                    <c:when test="${merchantlist.id==goodsinfo.merchantid }">selected="selected"</c:when>
                                </c:choose>>${merchantlist.merchantname}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label for="salesurl" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        销售网址:</label>
                    <div class="col-md-5">
                        <input type="text" class="form-control" id="salesurl" name="salesurl" placeholder="销售网址" value="${goodsinfo.salesurl}">
                    </div>
                    <label for="goodsclass" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        商品分类:</label>
                    <div class="col-md-5">
                        <select class="select2-data-array form-control" id="goodsclass" name="goodsclass" autocomplete="off">
                            <c:forEach items="${goodsclassList}" var="goodsclassList">
                                <option value="${goodsclassList.id}" <c:choose>
                                    <c:when test="${goodsclassList.id==goodsinfo.goodsclass }">selected="selected"</c:when>
                                </c:choose>>${goodsclassList.goodsclassname}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label for="memo" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                        简介:</label>
                    <div class="col-md-11">
                        <textarea class="form-control" id="memo" name="memo">${goodsinfo.memo}</textarea>
                    </div>
                </div>
                <button class="btn btn-primary btn-flat" id="savebtn">保存</button>
            </form>
        </section>
    </div>
</div>
</body>
<jsp:include page="/head/master/js.jsp"/>

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
                            $('#pic1img').attr("src", '${pageContext.request.contextPath}' + url);
                            $('#goodspic').val(url);
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
