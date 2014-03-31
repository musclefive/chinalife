<%--
  Created by IntelliJ IDEA.
  User: Chao.Cui.VWED
  Date: 14-3-19
  Time: 下午9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <c:import url="/template/importedFiles.html" />
    <script type="application/javascript" language="JavaScript">
    </script>
</head>
<body>
<!--navigation for left area-->
<%--<%@ include file="chinalife/jsp/header.jsp"%>--%>
<c:import url="/template/header.jsp" />
<div class="container">
    <div class="row clearfix">
        <div class="col-md-3">
            <%@ include file="/template/left.jsp"%>
        </div>
        <div class="col-md-9">
            <div class="tabbable" id="tabs-204282">
                <ul class="nav nav-tabs">
                    <li>
                        <a href="#panel-361059" data-toggle="tab">基本资料</a>
                    </li>
                    <li class="active">
                        <a href="#panel-775800" data-toggle="tab">详细资料</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <%--user basic information--%>
                    <div class="tab-pane active" id="panel-361059">
                        <form class="form-horizontal" id="userBasicForm" method="post" action="">
                            <div class="form-group"></div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">邮箱地址</label>
                                <div class="col-md-6 controls">
                                    <p class="form-control-static"><c:out value="${sessionScope.user.getEmail()}">未登陆</c:out></p>
                                </div>
                                <div class="col-md-4"></div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="inputForTitle">用户名</label>
                                <div class="col-md-6 controls">
                                    <input  class="form-control" id="inputForTitle" type="text"
                                            value=" <c:out value="${sessionScope.user.getNickname()}">未登陆</c:out>">
                                </div>
                                <div class="col-md-4"></div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">注册时间</label>
                                <div class="col-md-6 controls">
                                    <p class="form-control-static"><c:out value="${sessionScope.user.getCreateTime()}">注册时间</c:out></p>
                                </div>
                                <div class="col-md-4"></div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="telCell">手机号码</label>
                                <div class="col-md-6 controls">
                                    <input  class="form-control" id="telCell" type="text" name="telCell"
                                            value=" <c:out value="${sessionScope.user.getTelCell()}">手机号码</c:out>">
                                </div>
                                <div class="col-md-4"></div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">上次修改时间</label>
                                <div class="col-md-6 controls">
                                    <p class="form-control-static"><c:out value="${sessionScope.user.getUpdateTime()}">上次修改时间</c:out></p>
                                </div>
                                <div class="col-md-4"></div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">上传头像</label>
                                <div class="col-md-6 controls">
                                    <input class="input-file" id="fileInput" type="file" name="picture">
                                </div>
                                <div class="col-md-4"></div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-4"></div>
                                <div class="col-md-6 controls">
                                    <button type="submit" class="btn btn-success">保存</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <%--user detailed information--%>
                    <div class="tab-pane" id="panel-775800">
                        <form class="form-horizontal" id="userDetailForm" method="post" action="">
                            <div class="form-group"></div>
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="telNumber">固定电话</label>
                                <div class="col-md-6 controls">
                                    <input  class="form-control" id="telNumber" name="telNumber" type="text"
                                            value=" <c:out value="${sessionScope.user.getTelNum()}">固定电话</c:out>">
                                </div>
                                <div class="col-md-4"></div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>

            </div>
        </div>
    </div>
</div>

</body>
</html>
