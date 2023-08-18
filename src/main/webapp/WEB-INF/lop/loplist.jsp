<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html" charset=utf-8" />
<title>Quản Lý Lớp</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<style>
.button {
	text-decoration: none;
	background-color: green;
	color: white;
	padding: 10px;
	border-radius: 4px;
}

.badge-success {
	color: #fff;
	background-color: #28a745;
}

.badge-danger {
	color: #fff;
	background-color: #dc3545;
}
</style>
</head>
<body>
<header class="p-3 mb-3 border-bottom">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 link-body-emphasis text-decoration-none">
          <img src="https://vuainnhanh.com/wp-content/uploads/2023/02/logo-van-lang-896x1024-1.png"
        	height="120px" width="100px"/>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="<%=request.getContextPath() %>" class="nav-link  px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Trang chủ</font></font></a></li>
          <li><a href="<%=request.getContextPath() %>/student" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Quản Lý Sinh Viên</font></font></a></li>
          <li><a href="<%=request.getContextPath() %>/khoa" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Quản Lý Khoa</font></font></a></li>
          <li><a href="<%=request.getContextPath() %>/lecturer" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Quản Lý Giảng Viên</font></font></a></li>
          <li><a href="#" class="nav-link px-2 disabled px-2 link-secondary"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Quản Lý Lớp</font></font></a></li>
          <li><a href="<%=request.getContextPath() %>/user" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Quản Lý Người Dùng</font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></a></li>
          
        </ul>

        <div class="flex-shrink-0 dropdown">
          <a href="#" class="d-block link-body-emphasis text-decoration-none dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
            <img src="https://github.com/mdo.png" alt="mdo" width="32" height="32" class="rounded-circle">
          </a>
          <div class="dropdown-menu">
		
		      <a class="dropdown-item" href="#">Log out</a>
    	</div>
        </div>
      </div>
    </div>
  </header>
  
  <div class="container-fluid p-5 bg-primary text-white text-center">
  		<h1>QUẢN LÝ LỚP</h1>
  		<p>Quản Lý Tất Cả Lớp Hiện Có!!!</p>
  </div>
  
  <div class="container">
  	<div class="row">
  		<div class="toolbar-left"
  		style="margin-top: 15px; margin-bottom: 15px">
  		<a class="button" href="<%=request.getContextPath() %>/lop/form">Thêm Mới</a>
  		</div>
  </div>
  <div class="row">
  	<div class="col-md-12">
  		<table class="table table-bordered">
  			<thead class="thead-light">
  				<th class="text-center" width="150px">ID</th>
  				<th class="text-center" >Mã Lớp</th>
  				<th class="text-center" >Họ Tên Giảng Viên Chủ Nhiệm</th>
  				<th class="text-center" >Trạng Thái</th>
  				<th class="text-center" width="150px">Hành Động</th>
  				<c:if test="${listLop.size() > 0 }">
  					<c:forEach var="lop" items="${listLop}">
  						<tr>
  							<td class="text-center"><c:out value="${lop.id }"/></td> 
  							<td><c:out value="${lop.malop }"></c:out></td>
  							<td><c:out value="${lop.hotengvcn }"></c:out></td>
  							<td class="text-center">
  							<c:if test="${lop.trangthai == true }">
	  								<span class="badge badge-success">Đang hoạt động</span>
  								</c:if> <c:if  test="${lop.trangthai == false }">
  									<span class="badge badge-danger">Tạm khóa</span>
  								</c:if></td>
  							<td class="text-center"><a
  								href="<%=request.getContextPath() %>/lop/form?id=<c:out value="${lop.id }"/>">Chỉnh sửa</a> &nbsp;&nbsp;&nbsp;&nbsp; <a
  								href="<%=request.getContextPath() %>/lop/delete?id=<c:out value="${lop.id }"/>">Xóa</a></td>
  						</tr>
  					</c:forEach>
  				</c:if>
  				<nav aria-label="Page navigation example">
				  <ul class="pagination">
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				        <span class="sr-only"></span>
				      </a>
				    </li>
				    <%-- <c:forEach begin="1" end="${endP} var="i">
				    	<li class="page-item"><a class="page-link" href="#"><c:out value="${i }"></c:out></a></li>
				    </c:forEach> --%>
				    <li class="page-item"><a class="page-link" href="#">1</a></li>
				    <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item"><a class="page-link" href="#">4</a></li>
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				        <span class="sr-only"></span>
				      </a>
				    </li>
				  </ul>
				</nav>
  				<c:if test="${listLop.size() <= 0 }">
  					<tr>
  						<td colspan=4 class="text-center">Chưa có dữ liệu</td>
  				</c:if>
  			</thead>
  		</table>
  	</div>
  </div>
  </div>
</body>
</html>