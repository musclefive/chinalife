<%--
  Created by IntelliJ IDEA.
  User: Chao.Cui.VWED
  Date: 14-3-19
  Time: 下午11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <c:import url="/template/importedFiles.html"/>
    <link href="chinalife/css/demo_table.css" rel="stylesheet" type="text/css"/>
    <script type="application/javascript" language="JavaScript">
        $(document).ready(function () {
            $('#example').dataTable({
                "sPaginationType": "full_numbers",
                "bProcessing": true,
                "sAjaxSource": 'dataSource.txt'
            });
        });
    </script>
</head>
<body>
<!--navigation for left area-->
<%@ include file="/template/header.jsp" %>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-3">
            <%@ include file="/template/left.jsp" %>
        </div>
        <div class="col-md-9">
            <div>
                <form class="form-horizontal" action="/chinalife/houseSaleAdd" enctype="multipart/form-data"
                      method="post">
                    <div id="legend" class="">
                        <legend class="">表单名</legend>
                    </div>
                    <div class="form-group">
                        <!-- Text input-->
                        <label class="col-md-2 control-label" for="inputForTitle">标题</label>

                        <div class="col-md-6 controls">
                            <input placeholder="placeholder" class="form-control" id="inputForTitle" type="text"
                                   name="title">

                            <p class="help-block">Supporting help text</p>
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                    <div class="form-group">
                        <!-- Text input-->
                        <label class="col-md-2 control-label" for="inputForDistrict">小区</label>

                        <div class="col-md-6 controls">
                            <input placeholder="placeholder" class="form-control" id="inputForDistrict" type="text"
                                   name="community">

                            <p class="help-block">Supporting help text</p>
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                    <div class="form-group">
                        <!-- Text input-->
                        <label class="col-md-2 control-label" for="inputForDistrict">Address(Just for test)</label>

                        <div class="col-md-6 controls">
                            <input placeholder="placeholder" class="form-control" id="addressId" type="text"
                                   name="address">

                            <p class="help-block">Supporting help text</p>
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label">地址</label>

                        <div class="col-md-8 controls form-inline">
                            <select class="form-control">
                                <option>Enter</option>
                                <option>Your</option>
                                <option>Options</option>
                                <option>Here!</option>
                            </select>
                            <select class="form-control">
                                <option>Enter</option>
                                <option>Your</option>
                                <option>Options</option>
                                <option>Here!</option>
                            </select>
                            <label for="inputForDistrictAddr"></label><input class="form-control"
                                                                             id="inputForDistrictAddr" type="password"
                                                                             placeholder="填写小区名称"/>
                        </div>
                        <div class="col-md-2"></div>
                    </div>
                    <div class="form-group">
                        <%--<!-- Prepended text-->--%>
                        <label class="col-md-2 control-label">户型</label>

                        <div class="col-md-6 controls">
                            <div class="row">
                                <div class="col-xs-2">
                                    <input type="text" class="form-control" id="houseType_shi" placeholder=""
                                           name="room">
                                </div>
                                <div class="col-xs-1">
                                    <label class="control-label" for="houseType_shi">室</label>
                                </div>
                                <div class="col-xs-2">
                                    <input type="text" class="form-control" id="houseType_ting" placeholder=""
                                           name="hall">
                                </div>
                                <div class="col-xs-1">
                                    <label class="control-label" for="houseType_ting">厅</label>
                                </div>
                                <div class="col-xs-2">
                                    <input type="text" class="form-control" id="houseType_wei" placeholder=""
                                           name="toilet">
                                </div>
                                <div class="col-xs-1">
                                    <label class="control-label" for="houseType_wei">卫</label>
                                </div>
                                <div class="col-xs-2">
                                    <input type="text" class="form-control" id="houseType_garage" placeholder=""
                                           name="carport">
                                </div>
                                <div class="col-xs=3">
                                    <label class="control-label" for="houseType_garage">车库</label>
                                </div>
                            </div>
                            <p class="help-block">Supporting help text</p>
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                    <div class="form-group">
                        <!-- Text input-->
                        <label class="col-md-2 control-label" for="inputForArea">面积</label>

                        <div class="col-md-2 controls">
                            <input placeholder="placeholder" class="form-control" id="inputForArea" type="text"
                                   name="area">
                        </div>
                        <div class="col-xs-2">
                            <label class="control-label" for="inputForArea">平方米</label>
                        </div>
                        <div class="col-md-8"></div>
                    </div>
                    <div class="form-group">
                        <!-- Text input-->
                        <label class="col-md-2 control-label" for="inputForPrice">售价</label>

                        <div class="col-md-2 controls">
                            <input placeholder="placeholder" class="form-control" id="inputForPrice" type="text"
                                   name="price">
                        </div>
                        <div class="col-xs-2">
                            <label class="control-label" for="inputForPrice">万元</label>
                        </div>
                        <div class="col-md-8"></div>
                    </div>
                    <div class="form-group">
                        <!-- Textarea -->
                        <label class="col-md-2 control-label" for="inputForDetail">描述</label>

                        <div class="col-md-8 controls">
                            <div class="textarea">
                                <textarea class="form-control" id="inputForDetail" rows="8"
                                          name="description"> </textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <!-- Text input-->
                        <label class="col-md-2 control-label" for="inputForContact">联系人</label>

                        <div class="col-md-6 controls">
                            <input placeholder="placeholder" class="form-control" id="inputForContact" type="text"
                                   name="contact_person">

                            <p class="help-block">Supporting help text</p>
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                    <div class="form-group">
                        <!-- Text input-->
                        <label class="col-md-2 control-label" for="inputForTel">联系电话</label>

                        <div class="col-md-6 controls">
                            <input placeholder="placeholder" class="form-control" id="inputForTel" type="text"
                                   name="contact_phone">

                            <p class="help-block">Supporting help text</p>
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label">File Button</label>

                        <div class="col-md-6 controls">
                            <input class="input-file" id="fileInput" type="file" name="picture">
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label"></label>

                        <div class="col-md-6 controls">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>