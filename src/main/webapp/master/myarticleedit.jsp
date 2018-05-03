<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/head/master/init.jsp" %>
<%
    String result = request.getParameter("result");
%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>文章编辑--江西风格网络后台管理系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/select2/css/select2.min.css">
    <jsp:include page="/head/master/css.jsp"/>
</head>
<body>
<div>
    <jsp:include page="/head/master/top.jsp"/>
    <div class="container-fluid">
        <div class="row">
            <jsp:include page="/head/master/left.jsp"/>
            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2">
                    <h1 class="h2">文章编辑</h1>
                </div>

                <section class="content">
                    <form action="${pageContext.request.contextPath}/master/articlesave" class="form-horizontal" method="post"
                          id="articleform">
                        <input type="hidden" id="articleid" name="articleid" value="${articleInfo.id }">
                        <div class="form-group row">
                            <label for="atitle" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                                文章标题:</label>
                            <div class="col-md-5">
                                <input type="text" class="form-control" id="atitle" name="atitle" placeholder="文章标题" value="${articleInfo.atitle }">
                            </div>
                            <label for="atitle_min" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                                缩略标题:</label>
                            <div class="col-md-5">
                                <input type="text" class="form-control" id="atitle_min" name="atitle_min" placeholder="缩略标题" value="${articleInfo.atitle_min }">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="columnid" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                                所属栏目:</label>
                            <div class="col-md-5">
                                <select class="select2-data-array form-control" id="columnid" name="columnid" autocomplete="off">
                                    <c:forEach items="${columnInfoList}" var="columnInfoList">
                                        <option value="${columnInfoList.id}" <c:choose>
                                            <c:when test="${columnInfoList.id==articleInfo.columnid }">selected="selected"</c:when>
                                        </c:choose>>${columnInfoList.columnname}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <label for="astatus" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                                文章状态:</label>
                            <div class="col-md-5">
                                <select class="select2-data-array form-control" id="astatus" name="astatus" autocomplete="off">
                                    <option value="0" <c:choose>
                                        <c:when test="${0==articleInfo.astatus }">selected="selected"</c:when>
                                    </c:choose> >草稿
                                    </option>
                                    <option value="1" <c:choose>
                                        <c:when test="${1==articleInfo.astatus }">selected="selected"</c:when>
                                    </c:choose>>正常
                                    </option>
                                </select>
                            </div>

                        </div>
                        <div class="form-group row">
                            <label for="profile" class="col-md-1 control-label"><i class="fa fa-fw fa-pencil-square-o"></i>
                                文章概要:</label>
                            <div class="col-md-11">
                                <textarea class="form-control" id="profile" name="profile">${articleInfo.profile}</textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-11 col-md-offset-1">
                                <img id="pic1img" src="${articleInfo.thumb_pic }" height="80" width="100">
                                <input type="hidden" id="thumb_pic" name="thumb_pic" value="${articleInfo.thumb_pic }">
                                <input type="button" id="pic1" name="pic1" class="btn btn-sm btn-primary btn-flat"
                                       value="选择文章缩略图">
                            </div>
                        </div>
                        <div class="form-group article-text row">
                            <div class="col-md-offset-1 col-md-11">
                                <label for="atext">正文</label>
                                <textarea id="atext" name="atext"
                                          style="width:100%;height:500px;">${articleInfo.atext }</textarea>
                            </div>
                        </div>
                        <button class="btn btn-primary btn-flat" id="savebtn">保存</button>
                    </form>
                </section>
            </main>
        </div>
    </div>
</body>

<jsp:include page="/head/master/js.jsp"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/plugins/select2/js/select2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/plugins/select2/js/i18n/zh-CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/plugins/kindeditor/kindeditor-all-min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/plugins/kindeditor/lang/zh_CN.js"></script>
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
                            $('#thumb_pic').val(url);
                            editor.hideDialog();
                        }
                    });
                });
            });

            K.create('textarea[name="atext"]', {
                resizeType: 1,
                autoHeightMode: true,
                uploadJson: "${pageContext.request.contextPath}/master/upload_json.jsp",
                fileManagerJson: "${pageContext.request.contextPath}/master/file_manager_json.jsp",
                allowFileManager: true,
                afterBlur: function () {
                    this.sync();
                }
            });
        });

        $("#savebtn").on("click", function () {
            $("#articleform").submit();
        });
    });
</script>
</html>
