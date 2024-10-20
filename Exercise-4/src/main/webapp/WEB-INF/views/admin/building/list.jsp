<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="buildingListURL" value="/admin/building-list"/>
<html>
<head>
    <title>Danh sách tòa nhà</title>
</head>
<body>

<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
            </script>

            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Trang chủ</a>
                </li>
                <li class="active">Quản lý tòa nhà</li>
            </ul><!-- /.breadcrumb -->


        </div>

        <div class="page-content">
            <div class = "row">
                <div class = "col-xs-12">
                    <div class="widget-box">
                        <div class="widget-header">
                            <h5 class="widget-title">Tìm kiếm</h5>

                            <div class="widget-toolbar">

                                <a href="#" data-action="collapse">
                                    <i class="ace-icon fa fa-chevron-up"></i>
                                </a>

                            </div>
                        </div>
                        <div class="widget-body" style="font-family:'Times New Roman', Times, serif ">
                            <div class="widget-main">
                                <form:form id="listForm" method="GET" action="${buildingListURL}" modelAttribute="modelSearch">
                                    <div class = "row">
                                        <div class = "form-group">
                                            <div class = "col-xs-12">
                                                <div class = "col-xs-6">
                                                    <div>
                                                        <label class = "name">Tên tòa nhà</label>
                                                        <form:input path="name" class="form-control"/>
                                                    </div>
                                                </div>
                                                <div class = "col-xs-6">
                                                    <div>
                                                        <label class = "name">Diện tích sàn</label>
                                                        <form:input path="floorArea" class="form-control"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class = "form-group">
                                            <div class = "col-xs-12">
                                                <div class = "col-xs-2">
                                                    <div>
                                                        <label class = "name">Quận hiện có</label>
                                                        <form:select path="district" class = "form-control">
                                                            <form:option value="">---Chọn Quận---</form:option>
                                                            <form:option value="Quan_1">Quận 1</form:option>
                                                            <form:option value="Quan_2">Quận 2</form:option>
                                                            <form:option value="Quan_3">Quận 3</form:option>
                                                            <form:option value="Quan_10">Quận 10</form:option>
                                                        </form:select>
                                                    </div>
                                                </div>
                                                <div class = "col-xs-5">
                                                    <div>
                                                        <label class = "name">Phường</label>
                                                        <form:input path="ward" class="form-control"/>
<%--                                                        <input type = "text" class = "form-control" name="ward" value="${modelSearch.ward}">--%>
                                                    </div>
                                                </div>
                                                <div class = "col-xs-5">
                                                    <div>
                                                        <label class = "name">Đường</label>
                                                        <form:input path="street" class="form-control"/>
<%--                                                        <input type = "text" class = "form-control" name="street" value="${modelSearch.street}">--%>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class = "form-group">
                                            <div class = "col-xs-12">
                                                <div class = "col-xs-4">
                                                    <div>
                                                        <label class = "name">Số tầng hầm</label>
                                                        <form:input path="numberOfBasement" class="form-control"/>
                                                    </div>
                                                </div>
                                                <div class = "col-xs-4">
                                                    <div>
                                                        <label class = "name">Hướng</label>
                                                        <form:input path="direction" class="form-control"/>
                                                    </div>
                                                </div>
                                                <div class = "col-xs-4">
                                                    <div>
                                                        <label class = "name">Hạng</label>
                                                        <form:input path="level" class="form-control"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class = "form-group">
                                            <div class = "col-xs-12">
                                                <div class = "col-xs-3">
                                                    <div>
                                                        <label class = "name">Diện tích từ</label>
                                                        <form:input path="areaFrom" class="form-control"/>
                                                    </div>
                                                </div>
                                                <div class = "col-xs-3">
                                                    <div>
                                                        <label class = "name">Diện tích đến</label>
                                                        <form:input path="areaTo" class="form-control"/>
                                                    </div>
                                                </div>
                                                <div class = "col-xs-3">
                                                    <div>
                                                        <label class = "name">Giá thuê từ</label>
                                                        <form:input path="rentPriceFrom" class="form-control"/>
                                                    </div>
                                                </div>
                                                <div class = "col-xs-3">
                                                    <div>
                                                        <label class = "name">Giá thuê đến</label>
                                                        <form:input path="rentPriceTo" class="form-control"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class = "form-group">
                                            <div class = "col-xs-12">
                                                <div class = "col-xs-5">
                                                    <div>
                                                        <label class = "name">Tên quản lý</label>
                                                        <form:input path="managerName" class="form-control"/>
                                                    </div>
                                                </div>
                                                <div class = "col-xs-5">
                                                    <div>
                                                        <label class = "name">SĐT quản lý</label>
                                                        <form:input path="managerPhone" class="form-control"/>
                                                    </div>
                                                </div>
                                                <div class = "col-xs-2">
                                                    <div>
                                                        <label class = "name">Nhân viên</label>
                                                        <form:select class = "form-control" path="staffId">
                                                            <form:option value="">---Chọn Nhân Viên---</form:option>
                                                            <form:option value="2">LTH</form:option>
                                                            <form:option value="3">LT Hoang</form:option>
                                                        </form:select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class = "form-group">
                                            <div class = "col-xs-12">
                                                <div class="col-xs-6">
                                                    <div>
                                                        <label class="checkbox-inline">
                                                            <input name="typeCode" type = "checkbox" value="noi-that"> Nội thất
                                                        </label>
                                                        <label class="checkbox-inline">
                                                            <input name="typeCode" type = "checkbox" value="nguyen-can"> Nguyên căn
                                                        </label>
                                                        <label class="checkbox-inline">
                                                            <input name="typeCode" type = "checkbox" value="tang-tret"> Tầng trệt
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class = "form-group">
                                            <div class = "col-xs-12">
                                                <div class="col-xs-6">
                                                    <div>
                                                        <button type="button" class="btn btn-xs btn-success" id="btnSearchBuilding">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                                                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"></path>
                                                            </svg>
                                                            Tìm kiếm
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form:form>
                            </div>
                        </div>
                    </div>

                        <div class="pull-right">
                            <a href="/admin/building-edit">
                                <button class="btn btn-info" title="Thêm tòa nhà">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building-add" viewBox="0 0 16 16">
                                        <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0"/>
                                        <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"/>
                                        <path d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/>
                                    </svg>
                                </button>
                            </a>
                            <button class="btn btn-info" title="Xóa tòa nhà">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building-dash" viewBox="0 0 16 16">
                                    <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7M11 12h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1"/>
                                    <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"/>
                                    <path d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/>
                                </svg>

                            </button>
                        </div>
                </div>
            </div>
            <!-- PAGE CONTENT ENDS -->
        </div><!-- /.col -->
    </div>
    <!-- /.row -->
    <div class = "row">
        <div class="col-xs-12">
            <table id="simple-table" class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th class="center">
                        <label class="pos-rel">
                            <input type="checkbox" class="ace">
                            <span class="lbl"></span>
                        </label>
                    </th>
                    <th>Tên tòa nhà</th>
                    <th>Địa chỉ</th>
                    <th>Số tầng hầm</th>
                    <th>Tên quản lý</th>
                    <th>Số điện thoại quản lý</th>
                    <th>Diện tích sàn</th>
                    <th>Diện tích trống</th>
                    <th>Diện tích thuê</th>
                    <th>Phí môi giới</th>
                    <th>Giá thuê</th>
                    <th>Phí dịch vụ</th>
                    <th>Thao tác</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td class="center">
                        <label class="pos-rel">
                            <input type="checkbox" class="ace">
                            <span class="lbl"></span>
                        </label>
                    </td>

                    <td>
                        ACM Building
                    </td>
                    <td>59 Phan Xích Long, Phường 2, Quận 1</td>
                    <td>3</td>
                    <td>Anh Nam - Chị Linh</td>
                    <td>Feb 12</td>
                    <td>Feb 12</td>
                    <td>Feb 12</td>
                    <td>Feb 12</td>
                    <td>Feb 12</td>
                    <td>Feb 12</td>
                    <td>Expiring</td>

                    <td>
                        <div class="hidden-sm hidden-xs btn-group">
                            <button class="btn btn-xs btn-success" title="Giao tòa nhà" onclick="assignmentBuilding(1)">
                                <i class="ace-icon glyphicon glyphicon-list"></i>
                            </button>

                            <a class="btn btn-xs btn-info" href="/admin/building-edit" title="Sửa tòa nhà">
                                <i class="ace-icon fa fa-pencil bigger-120"></i>
                            </a>

                            <button class="btn btn-xs btn-danger">
                                <i class="ace-icon fa fa-trash-o bigger-120"></i>
                            </button>

                        </div>

                    </td>
                </tr>

                <tr>
                    <td class="center">
                        <label class="pos-rel">
                            <input type="checkbox" class="ace">
                            <span class="lbl"></span>
                        </label>
                    </td>

                    <td>
                        Nam Giao Building
                    </td>
                    <td>59 Phan Xích Long, Phường 2, Quận 1</td>
                    <td>3</td>
                    <td>Anh Nam - Chị Linh</td>
                    <td>Feb 12</td>
                    <td>Feb 12</td>
                    <td>Feb 12</td>
                    <td>Feb 12</td>
                    <td>Feb 12</td>
                    <td>Feb 12</td>
                    <td>Expiring</td>

                    <td>
                        <div class="hidden-sm hidden-xs btn-group">
                            <button class="btn btn-xs btn-success" title="Giao tòa nhà" onclick="assignmentBuilding(2)">
                                <i class="ace-icon glyphicon glyphicon-list"></i>
                            </button>

                            <button class="btn btn-xs btn-info">
                                <i class="ace-icon fa fa-pencil bigger-120"></i>
                            </button>

                            <button class="btn btn-xs btn-danger">
                                <i class="ace-icon fa fa-trash-o bigger-120"></i>
                            </button>

                        </div>


                    </td>
                </tr>


                </tbody>
            </table>
        </div>

</div><!-- /.page-content -->


</div><!-- /.main-content -->
<div class="modal fade" id="assignmentBuildingModal" role="dialog" style="font-family: 'Times New Roman', Times, serif;">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Danh sách nhân viên</h4>
            </div>
            <div class="modal-body">
                <table id="staffList" class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <th class="center">
                            Chọn
                        </th>
                        <th>
                            Tên nhân viên
                        </th>
                    </tr>
                    </thead>

                    <tbody>
                    <tr>
                        <td class="center">
                            <input type="checkbox" id="checkbox_1" value="1">
                        </td>

                        <td>
                            LT Hoàng
                        </td>
                    </tr>
                    <tr>
                        <td class="center">
                            <input type="checkbox" id="checkbox_2" value="2">
                        </td>

                        <td>
                            Lương Tuấn Hoàng
                        </td>
                    </tr>

                    </tbody>
                </table>
                <input type="hidden" id = "buildingId" name ="Building" value="">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="btnAssignmentBuilding">Giao tòa nhà</button>
                <button type="button" class="btn btn-default" >Đóng</button>
            </div>
        </div>

    </div>
</div>

<script>
    function assignmentBuilding(buildingId) {
        $('#assignmentBuildingModal').modal();
        $('#buildingId').val();
    }

    $('#btnAssignmentBuilding').click(function (e){
        e.preventDefault();
        var data = {};
        data['buildingId'] = $('buildingId').val();
        var staffs = $('#staffList').find('tbody input[type = checkbox]:checked').map(function (){
            return $(this).val();
        }).get();
        data['staff'] = staffs;
    });

    $('#btnSearchBuilding').click(function (e) {
        e.preventDefault(); // load nhầm trang thì tujw hủy
        $('#listForm').submit();//submit lên param

    });
</script>


</body>
</html>
