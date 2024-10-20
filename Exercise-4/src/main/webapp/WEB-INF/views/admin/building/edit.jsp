<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Thêm tòa nhà</title>
</head>
<body>
<div class="main-content" id="main-container">
    <script type="text/javascript">
        try{ace.settings.check('main-container' , 'fixed')}catch(e){}
    </script>

    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Home</a>
                    </li>
                    <li class="active">Dashboard</li>
                </ul><!-- /.breadcrumb -->


            </div>

            <div class="page-content">

                <div class="page-header">
                    <h1>
                        Sửa hoặc thêm tòa nhà
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            overview &amp; stats
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class = "row" style="font-family: 'Times New Roman', Times, serif;">
                    <div class = "col-xs-12">
                        <form class="form-horizontal" role="form" id = "form-edit">
                            <div class="form-group">
                                <label class="col-xs-3">Tên tòa nhà</label>
                                <div class="col-xs-9">
                                    <input class="form-control" type="text" id ="name", name="name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Chọn quận</label>
                                <div class="col-xs-2">
                                    <select id="districtId" type="text" class="form-control" name="districtid">
                                        <option value="">---Quận---</option>
                                        <option value="1">Quận 1</option>
                                        <option value="2">Quận 2</option>
                                        <option value="3">Quận 3</option>
                                        <option value="4">Quận 10</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Phường</label>
                                <div class="col-xs-9">
                                    <input class="form-control" type="text" id ="ward", name="ward">

                                </div>

                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Đường</label>
                                <div class="col-xs-9">
                                    <input class="form-control" type="text" id ="street", name="street">

                                </div>

                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Kết cấu</label>
                                <div class="col-xs-9">
                                    <input class="form-control" type="text" id ="structure", name="structure">

                                </div>

                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Số tầng hầm</label>
                                <div class="col-xs-9">
                                    <input class="form-control" type="number" id ="numberOfBasement", name="numberOfBasement">

                                </div>

                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Diện tích sàn</label>
                                <div class="col-xs-9">
                                    <input class="form-control" type="number" id ="floorArea", name="floorArea">

                                </div>

                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Hướng</label>
                                <div class="col-xs-9">
                                    <input class="form-control" type="text" id ="direction", name="direction">

                                </div>

                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Hạng</label>
                                <div class="col-xs-9">
                                    <input class="form-control" type="text" id ="level", name="level">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Diện tích thuê</label>
                                <div class="col-xs-9">
                                    <input class="form-control" type="text" id ="rentArea", name="rentArea">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Giá thuê</label>
                                <div class="col-xs-9">
                                    <input class="form-control" type="number" id ="rentPrice", name="rentPrice">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Mô tả giá</label>
                                <div class="col-xs-9">
                                    <input class="form-control" type="text" id ="rentPriceDescription", name="rentPriceDescription">
                                </div>
                            </div>



                            <div class="form-group">
                                <label class="col-xs-3">Loại tòa nhà</label>
                                <div class="col-xs-9">
                                    <label class="checkbox-inline">
                                        <input type="checkbox" id="typeCode" name="typeCode" value="noi-that"> Nội thất
                                    </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" id="typeCode" name="typeCode" value="nguyen-can"> Nguyên căn
                                    </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" id="typeCode" name="typeCode" value="tang-tret"> Tầng trệt
                                    </label>
                                </div>

                            </div>

                            <div class="form-group">
                                <label class="col-xs-3"></label>
                                <div class="col-xs-9">
                                    <button type="button" class = "btn btn-primary" id="btnAddBuilding">Thêm tòa nhà</button>
                                    <button type="button" class = "btn btn-primary">Hủy thao tác</button>
                                </div>

                            </div>

                        </form>
                    </div>
                </div>
                <!-- PAGE CONTENT ENDS -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.page-content -->
</div><!-- /.main-content -->
</body>
</html>
