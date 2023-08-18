<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html" charset=utf-8" />
  <title>Home Page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
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
        <li><a href="#" class="nav-link disabled px-2 link-secondary"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Trang chủ</font></font></a></li>
        <li><a href="<%=request.getContextPath() %>/student" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Quản Lý Sinh Viên</font></font></a></li>
        <li><a href="<%=request.getContextPath() %>/khoa" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Quản Lý Khoa</font></font></a></li>
        <li><a href="<%=request.getContextPath() %>/lecturer" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Quản Lý Giảng Viên</font></font></a></li>
        <li><a href="<%=request.getContextPath() %>/lop" class="nav-link px-2 link-body-emphasis"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Quản Lý Lớp</font></font></a></li>
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
      </ul>

      <div class="flex-shrink-0 dropdown">
        <a href="#" class="d-block link-body-emphasis text-decoration-none dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
          <img src="https://github.com/mdo.png" alt="mdo" width="32" height="32" class="rounded-circle">
        </a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href=""<%=request.getContextPath() %>/LoginServlet">Login</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Log out</a>
        </div>
      </div>
    </div>
  </div>
</header>

<div class="container">
  <div class = "row">
    <div class = "col-md-4">
      <div class="d-flex flex-column flex-md-row p-4 gap-4 py-md-5 align-items-center justify-content-center">
        <div class="list-group">
          <c:forEach var="khoa" items="${listKhoa}">
            <a href="#" class="list-group-item list-group-item-action d-flex gap-3 py-3" aria-current="true">
              <img src="https://github.com/twbs.png" alt="twbs" width="32" height="32" class="rounded-circle flex-shrink-0">
              <div class="d-flex gap-2 w-100 justify-content-between">
                <div>
                  <h6 class="mb-0"style="padding-top: 5px;"><c:out value="${khoa.tenkhoa}"/></h6>
                </div>
              </div>
            </a>
          </c:forEach>
        </div>
      </div>
    </div>


    <div class = "col-md-7">
      <div class="row">
        <div class="col-md-4">
          <div class= "card" style="width: 18rem;">
            <img class= "card-img-top"
                 src= "https://binhminhdigital.com/StoreData/PageData/1464/anhchandungvanhungloicantranh5.jpg" alt= "Card image cap">
            <div class="card-body">
              <h5 class="card-title">Trần Lê Diễm Phương</h5>


            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class= "card" style="width: 18rem;">
            <img class= "card-img-top"
                 src= "https://binhminhdigital.com/StoreData/PageData/1756/motvaicachchupchandungdep11.jpg" alt= "Card image cap">
            <div class="card-body">
              <h5 class="card-title">Nguyễn Như Ngọc</h5>


            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class= "card" style="width: 18rem;">
            <img class= "card-img-top"
                 src= "https://binhminhdigital.com/StoreData/PageData/1464/anhchandungvanhungloicantranh3.jpg" alt= "Card image cap">
            <div class="card-body">
              <h5 class="card-title">Cao Bá Quát</h5>


            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <div class= "card" style="width: 18rem;">
            <img class= "card-img-top"
                 src= "https://lbm.vn/wp-content/uploads/2013/02/ong-chup-chan-dung-01.jpg" alt= "Card image cap">
            <div class="card-body">
              <h5 class="card-title">Lê Quỳnh Như</h5>


            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class= "card" style="width: 18rem;">
            <img class= "card-img-top"
                 src= "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/ec/a3/4b/caption.jpg?w=500&h=400&s=1" alt= "Card image cap">
            <div class="card-body">
              <h5 class="card-title">Võ Ngọc Diễm</h5>


            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class= "card" style="width: 18rem;">
            <img class= "card-img-top"
                 src= "https://binhminhdigital.com/StoreData/PageData/1464/anhchandungvanhungloicantranh5.jpg" alt= "Card image cap">
            <div class="card-body">
              <h5 class="card-title">Johnny Đặng</h5>


            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <div class= "card" style="width: 18rem;">
            <img class= "card-img-top"
                 src= "https://photo-cms-tpo.epicdn.me/w890/Uploaded/2023/rkznae/2015_01_22/hoang_kim_beauty_care_dep_kienthuc_net_vn_4_22956453_XKVN.jpg" alt= "Card image cap">
            <div class="card-body">
              <h5 class="card-title">Thúy Kiều</h5>


            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class= "card" style="width: 18rem;">
            <img class= "card-img-top"
                 src= "https://nld.mediacdn.vn/BJ072xyCtEPHtnnWS0mbQaWHs01BP3/Image/2012/10/Chu-tich-nuoc-Truong-Tan-Sang_9d61d.jpg" alt= "Card image cap">
            <div class="card-body">
              <h5 class="card-title">Lưu Bị</h5>


            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class= "card" style="width: 18rem;">
            <img class= "card-img-top"
                 src= "https://mainbeauty.com.vn/resource/uploads/2016/10/bi-quyet-lam-dep-cua-miranda-kerr-500x400.jpg" alt= "Card image cap">
            <div class="card-body">
              <h5 class="card-title">Huỳnh Thị Hoa</h5>


            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <div class= "card" style="width: 18rem;">
            <img class= "card-img-top"
                 src= "https://dummyimage.com/500x400/ddd/white.png" alt= "Card image cap">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>


            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class= "card" style="width: 18rem;">
            <img class= "card-img-top"
                 src= "https://media.ngoisao.vn/news/2013/5/30/49/711jpg1369908285.jpg" alt= "Card image cap">
            <div class="card-body">
              <h5 class="card-title">Sarry Nguyễn</h5>


            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class= "card" style="width: 18rem;">
            <img class= "card-img-top"
                 src= "https://dummyimage.com/500x400/ddd/white.png" alt= "Card image cap">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>


            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>