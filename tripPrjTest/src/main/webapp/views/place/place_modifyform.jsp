<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>명소 글 수정</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="./views/place/place_modify.js"></script>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Finder - Directory &amp; Listings Bootstrap Template">
    <meta name="keywords" content="bootstrap, business, directory, listings, e-commerce, car dealer, city guide, real estate, job board, user account, multipurpose, ui kit, html5, css3, javascript, gallery, slider, touch">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png">
    <link rel="manifest" href="site.webmanifest">
    <link rel="mask-icon" color="#5bbad5" href="safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#766df4">
    <meta name="theme-color" content="#ffffff">
    <!-- Page loading styles-->
    <style>
      .page-loading {
        position: fixed;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 100%;
        -webkit-transition: all .4s .2s ease-in-out;
        transition: all .4s .2s ease-in-out;
        background-color: #fff;
        opacity: 0;
        visibility: hidden;
        z-index: 9999;
      }
      .page-loading.active {
        opacity: 1;
        visibility: visible;
      }
      .page-loading-inner {
        position: absolute;
        top: 50%;
        left: 0;
        width: 100%;
        text-align: center;
        -webkit-transform: translateY(-50%);
        transform: translateY(-50%);
        -webkit-transition: opacity .2s ease-in-out;
        transition: opacity .2s ease-in-out;
        opacity: 0;
      }
      .page-loading.active > .page-loading-inner {
        opacity: 1;
      }
      .page-loading-inner > span {
        display: block;
        font-size: 1rem;
        font-weight: normal;
        color: #666276;;
      }
      .page-spinner {
        display: inline-block;
        width: 2.75rem;
        height: 2.75rem;
        margin-bottom: .75rem;
        vertical-align: text-bottom;
        border: .15em solid #bbb7c5;
        border-right-color: transparent;
        border-radius: 50%;
        -webkit-animation: spinner .75s linear infinite;
        animation: spinner .75s linear infinite;
      }
      @-webkit-keyframes spinner {
        100% {
          -webkit-transform: rotate(360deg);
          transform: rotate(360deg);
        }
      }
      @keyframes spinner {
        100% {
          -webkit-transform: rotate(360deg);
          transform: rotate(360deg);
        }
      }
      
    </style>
    <!-- Page loading scripts-->
    <script>
      (function () {
        window.onload = function () {
          var preloader = document.querySelector('.page-loading');
          preloader.classList.remove('active');
          setTimeout(function () {
            preloader.remove();
          }, 2000);
        };
      })();
      
    </script>
    <!-- Vendor Styles-->
    <link rel="stylesheet" media="screen" href="vendor/simplebar/dist/simplebar.min.css"/>
    <link rel="stylesheet" media="screen" href="vendor/leaflet/dist/leaflet.css"/>
    <link rel="stylesheet" media="screen" href="vendor/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.min.css"/>
    <link rel="stylesheet" media="screen" href="vendor/filepond/dist/filepond.min.css"/>
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="css/theme.min.css">
  </head>
  <!-- Body-->
  <body class="bg-secondary">
    <!-- Page loading spinner-->
    <div class="page-loading active">
      <div class="page-loading-inner">
        <div class="page-spinner"></div><span>Loading...</span>
      </div>
    </div>
    <main class="page-wrapper">
      <!-- Navbar-->
      <header class="navbar navbar-expand-lg navbar-light fixed-top" data-scroll-header>
        <div class="container"><a class="navbar-brand me-3 me-xl-4" href="main"><img class="d-block" src="img/logo/logo-dark.svg" width="116" alt="Finder"></a>
          <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="dropdown d-none d-lg-block order-lg-3 my-n2 me-3"><a class="d-block py-2" href="city-guide-account-info.html"><img class="rounded-circle" src="img/avatars/36.png" width="40" alt="Annette Black"></a>
            <div class="dropdown-menu dropdown-menu-end">
              <div class="d-flex align-items-start border-bottom px-3 py-1 mb-2" style="width: 16rem;"><img class="rounded-circle" src="img/avatars/24.png" width="48" alt="Annette Black">
                <div class="ps-2">
                  <h6 class="fs-base mb-0">Annette Black</h6><span class="star-rating star-rating-sm"><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i></span>
                  <div class="fs-xs py-2">(302) 555-0107<br>annette_black@email.com</div>
                </div>
              </div><a class="dropdown-item" href="city-guide-account-info.html"><i class="fi-user opacity-60 me-2"></i>Personal Info</a><a class="dropdown-item" href="city-guide-account-favorites.html"><i class="fi-heart opacity-60 me-2"></i>Favorites</a><a class="dropdown-item" href="city-guide-vendor-businesses.html"><i class="fi-home opacity-60 me-2"></i>My Businesses</a><a class="dropdown-item" href="city-guide-account-reviews.html"><i class="fi-star opacity-60 me-2"></i>Reviews</a><a class="dropdown-item" href="city-guide-account-notifications.html"><i class="fi-bell opacity-60 me-2"></i>Notifications</a>
              <div class="dropdown-divider"></div><a class="dropdown-item" href="city-guide-help-center.html">Help</a><a class="dropdown-item" href="signin-light.html">Sign Out</a>
            </div>
          </div><a class="btn btn-primary btn-sm rounded-pill ms-2 order-lg-3" href="city-guide-add-business.html"><i class="fi-plus me-2"></i>Add<span class='d-none d-sm-inline'> business</span></a>
          <div class="collapse navbar-collapse order-lg-2" id="navbarNav">
            <ul class="navbar-nav navbar-nav-scroll" style="max-height: 35rem;">
              <li class="nav-item dropdown d-lg-none"><a class="nav-link dropdown-toggle d-flex align-items-center" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><img class="rounded-circle me-2" src="img/avatars/36.png" width="30" alt="Annette Black">Annette Black</a>
                <div class="dropdown-menu">
                  <div class="ps-3"><span class="star-rating star-rating-sm"><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i></span>
                    <div class="fs-xs py-2">(302) 555-0107<br>annette_black@email.com</div>
                  </div><a class="dropdown-item" href="city-guide-account-info.html"><i class="fi-user opacity-60 me-2"></i>Personal Info</a><a class="dropdown-item" href="city-guide-account-favorites.html"><i class="fi-heart opacity-60 me-2"></i>Favorites</a><a class="dropdown-item" href="city-guide-vendor-businesses.html"><i class="fi-home opacity-60 me-2"></i>My Businesses</a><a class="dropdown-item" href="city-guide-account-reviews.html"><i class="fi-star opacity-60 me-2"></i>Reviews</a><a class="dropdown-item" href="city-guide-account-notifications.html"><i class="fi-bell opacity-60 me-2"></i>Notifications</a>
                  <div class="dropdown-divider"></div><a class="dropdown-item" href="city-guide-help-center.html">Help</a><a class="dropdown-item" href="signin-light.html">Sign Out</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </header>
      <!-- Page content-->
      <!-- Preview modal-->
      <div class="modal fade" id="preview-modal" tabindex="-1">
        <div class="modal-dialog modal-fullscreen" role="document">
          <div class="modal-content">
            <div class="modal-header d-block d-sm-flex">
              <h3 class="h5 text-muted fw-normal modal-title d-none d-sm-block">Business preview</h3>
              <div class="d-flex align-items-center"><a class="btn btn-primary btn-sm me-4" href="city-guide-business-promotion.html">Save and continue</a><span class="fs-xs text-muted ms-auto me-2">[ESC]</span>
                <button class="btn-close ms-0" type="button" data-bs-dismiss="modal"></button>
              </div>
            </div>
            <div class="modal-body p-0">
              <div class="container mt-2 mt-sm-0 py-4 py-sm-5">
                <h1 class="h2 mb-2">Berlin Business Hotel</h1>
                <p class="mb-4 fs-lg">Ollenhauer Str. 29, 10118, Berlin</p>
                <div class="overflow-auto pb-3 px-2 mx-n2 mb-4" data-simplebar>
                  <div class="row g-2 g-md-3" style="min-width: 30rem;">
                    <div class="col-8"><img class="rounded rounded-md-3" src="img/city-guide/single/01.jpg" alt="Gallery thumbnail"></div>
                    <div class="col-4"><img class="rounded rounded-md-3 mb-2 mb-md-3" src="img/city-guide/single/02.jpg" alt="Gallery thumbnail"><img class="rounded rounded-md-3" src="img/city-guide/single/03.jpg" alt="Gallery thumbnail"></div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-7 mb-md-0 mb-4"><span class="badge bg-success me-2 mb-3">Verified</span><span class="badge bg-info me-2 mb-3">New</span>
                    <h2 class="h3 mb-4 pb-4 border-bottom">$50-100<span class="d-inline-block ms-1 fs-base fw-normal text-body">/night</span></h2>
                    <!-- About-->
                    <div class="mb-4 pb-md-3">
                      <h3 class="h4">About</h3>
                      <p class="mb-1">Lorem tincidunt lectus vitae id vulputate diam quam. Imperdiet non scelerisque turpis sed etiam ultrices. Blandit mollis dignissim egestas consectetur porttitor. Vulputate dolor pretium, dignissim eu augue sit ut convallis. Lectus est, magna urna feugiat sed ultricies sed in lacinia. Fusce potenti sit id pharetra vel ornare. Vestibulum sed tellus ullamcorper arcu.</p>
                      <div class="collapse" id="seeMoreOverview">
                        <p class="mb-1">Asperiores eos molestias, aspernatur assumenda vel corporis ex, magni excepturi totam exercitationem quia inventore quod amet labore impedit quae distinctio? Officiis blanditiis consequatur alias, atque, sed est incidunt accusamus repudiandae tempora repellendus obcaecati delectus ducimus inventore tempore harum numquam autem eligendi culpa.</p>
                      </div><a class="collapse-label collapsed" href="#seeMoreOverview" data-bs-toggle="collapse" data-bs-label-collapsed="Show more" data-bs-label-expanded="Show less" role="button" aria-expanded="false" aria-controls="seeMoreOverview"></a>
                    </div>
                    <!-- Amenities-->
                    <div class="mb-4 pb-md-3">
                      <h2 class="h4">Amenities</h2>
                      <ul class="list-unstyled row row-cols-lg-3 row-cols-md-2 row-cols-1 gy-1 mb-1 text-nowrap">
                        <li class="col"><i class="fi-wifi mt-n1 me-2 fs-lg align-middle"></i>Free WiFi</li>
                        <li class="col"><i class="fi-swimming-pool mt-n1 me-2 fs-lg align-middle"></i>2 swimming pools</li>
                        <li class="col"><i class="fi-pet mt-n1 me-2 fs-lg align-middle"></i>Pets-friendly</li>
                        <li class="col"><i class="fi-parking mt-n1 me-2 fs-lg align-middle"></i>Free parking</li>
                        <li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>Spa lounge</li>
                        <li class="col"><i class="fi-cafe mt-n1 me-2 fs-lg align-middle"></i>Restaurant</li>
                        <li class="col"><i class="fi-hotel-bell mt-n1 me-2 fs-lg align-middle"></i>Room service</li>
                        <li class="col"><i class="fi-cocktail mt-n1 me-2 fs-lg align-middle"></i>Bar</li>
                        <li class="col"><i class="fi-dumbell mt-n1 me-2 fs-lg align-middle"></i>Fitness Center</li>
                      </ul>
                      <div class="collapse" id="seeMoreAmenities">
                        <ul class="list-unstyled row row-cols-lg-3 row-cols-md-2 row-cols-1 gy-1 mb-1 text-nowrap">
                          <li class="col"><i class="fi-dish mt-n1 me-2 fs-lg align-middle"></i>Dishwasher</li>
                          <li class="col"><i class="fi-thermometer mt-n1 me-2 fs-lg align-middle"></i>Heating</li>
                        </ul>
                      </div><a class="collapse-label collapsed" href="#seeMoreAmenities" data-bs-toggle="collapse" data-bs-label-collapsed="Show more" data-bs-label-expanded="Show less" role="button" aria-expanded="false" aria-controls="seeMoreAmenities"></a>
                    </div>
                    <!-- Room types-->
                    <div class="mb-4 pb-md-3">
                      <h2 class="h4">Room types</h2>
                      <ul class="list-unstyled row row-cols-lg-3 row-cols-md-2 row-cols-1 gy-1 mb-1 text-nowrap">
                        <li class="col"><i class="fi-no-smoke mt-n1 me-2 fs-lg align-middle"></i>Non-smoking rooms</li>
                        <li class="col"><i class="fi-single-bed mt-n1 me-2 fs-lg align-middle"></i>Single rooms</li>
                        <li class="col"><i class="fi-double-bed mt-n1 me-2 fs-lg align-middle"></i>Family suites</li>
                      </ul>
                    </div>
                    <!-- Awards-->
                    <div class="pb-md-3">
                      <h2 class="h4">Awards</h2>
                      <ul class="list-unstyled">
                        <li class="d-flex align-items-center mb-2"><img class="flex-shrink-0 me-2" src="img/city-guide/single/awards/01.jpg" width="40" alt="Award logo">
                          <div>2020 Traveler’s Choice</div>
                        </li>
                        <li class="d-flex align-items-center mb-2"><img class="flex-shrink-0 me-2" src="img/city-guide/single/awards/02.jpg" width="40" alt="Award logo">
                          <div>TUI Top Quality 2020</div>
                        </li>
                        <li class="d-flex align-items-center mb-2"><img class="flex-shrink-0 me-2" src="img/city-guide/single/awards/03.jpg" width="40" alt="Award logo">
                          <div>TUI Holly 2019</div>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <!-- Sidebar-->
                  <aside class="col-md-5">
                    <!-- Place card-->
                    <article class="card mb-4 p-2 shadow-sm">
                      <div class="card-body">
                        <!-- Place info-->
                        <div class="d-flex align-items-start mb-3 pb-2 border-bottom"><img class="rounded-circle" src="img/city-guide/brands/hotel.svg" width="60" alt="Place thumbnail">
                          <div class="ps-2 ms-1">
                            <h3 class="h5 mb-2">Berlin Business Hotel</h3>
                            <ul class="list-unstyled d-flex flex-wrap fs-sm">
                              <li class="me-2 mb-1 pe-1"><i class="fi-star-filled mt-n1 me-1 text-warning align-middle opacity-70"></i><b>4.9 </b>(48)</li>
                              <li class="me-2 mb-1 pe-1"><i class="fi-wallet mt-n1 me-1 align-middle opacity-70"></i>$$</li>
                              <li class="me-2 mb-1 pe-1"><i class="fi-map-pin mt-n1 me-1 align-middle opacity-70"></i>1.4 km from center</li>
                            </ul>
                          </div>
                        </div>
                        <!-- Place contacts-->
                        <div class="mb-3 pb-3 border-bottom">
                          <h4 class="h5 mb-2">Contacts:</h4>
                          <ul class="nav flex-column">
                            <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal d-flex align-items-start" href="#"><i class="fi-map-pin mt-1 me-2 align-middle opacity-70"></i>Ollenhauer Str. 29, 10118, Berlin</a></li>
                            <li class="nav-item mb-2"><a class="nav-link d-inline-block p-0 fw-normal d-inline-flex align-items-start" href="tel:3025550107"><i class="fi-phone mt-1 me-2 align-middle opacity-70"></i>(302) 555-0107</a>, <a class="nav-link d-inline-block p-0 fw-normal" href="tel:3025550208">(302) 555-0208</a></li>
                            <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal d-flex align-items-start" href="#"><i class="fi-globe mt-1 me-2 align-middle opacity-60"></i>bb-hotel.com</a></li>
                            <li class="nav-item"><a class="nav-link p-0 fw-normal d-flex align-items-start" href="mailto:bb-hotel@example.com"><i class="fi-mail mt-1 me-2 align-middle opacity-70"></i>bb-hotel@example.com</a></li>
                          </ul>
                        </div>
                        <!-- Place pricing-->
                        <div class="mb-3 pb-4 border-bottom">
                          <div class="row row-cols-1">
                            <div class="col mb-3">
                              <h4 class="h5 mb-0"><span class="fs-4">$50-100&nbsp;</span><span class="fs-base fw-normal text-body">/night</span></h4>
                            </div>
                            <div class="col">
                              <button class="btn btn-primary btn-lg rounded-pill w-sm-auto w-100" type="button">Book now<i class="fi-chevron-right fs-sm ms-2"></i></button>
                            </div>
                          </div>
                        </div>
                        <!-- Follow-->
                        <div class="d-flex align-items-center">
                          <h4 class="h5 mb-0 me-3">Follow:</h4>
                          <div class="text-nowrap"><a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2" href="#"><i class="fi-facebook"></i></a><a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2" href="#"><i class="fi-instagram"></i></a><a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle" href="#"><i class="fi-twitter"></i></a></div>
                        </div>
                      </div>
                    </article>
                  </aside>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Page container-->
      <div class="container mt-5 mb-md-4 py-5">
        <div class="row">
          <!-- Page content-->
          <form enctype="multipart/form-data" action="placeModify" method="post">
           <input type="hidden" name="place_id" value="${place.place_id}" />
  		   <input type="hidden" name="page" value="${page}" />
  		  
          <div class="col-lg-8">
            <!-- Breadcrumb-->
            <nav class="mb-3 pt-2 pt-lg-3" aria-label="Breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="main">홈</a></li>
                <li class="breadcrumb-item active" aria-current="page">명소</li>
              </ol>
            </nav>
            <!-- Title-->
            <div class="mb-4">
              <h1 class="h2 mb-0">명소 글 수정</h1>
              <div class="d-lg-none pt-3 mb-2">33% content filled</div>
              <div class="progress d-lg-none mb-4" style="height: .25rem;">
                <div class="progress-bar bg-warning" role="progressbar" style="width: 33%" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>
            <!-- Basic info-->
            <section class="card card-body border-0 shadow-sm p-4 mb-4" id="basic-info">
              <h2 class="h4 mb-4"><i class="fi-info-circle text-primary fs-5 mt-n1 me-2"></i>정보</h2>
                <div class="col-sm-6 mb-3">
                  <label class="form-label" for="ab-title">명소 이름 <span class="text-danger">*</span></label>
                  <input class="form-control" type="text" id="place_name" name="place_name" value="${place.place_name}" placeholder="명소 이름을 입력하세요" required><span class="form-text"></span>
                </div>
              <div class="col-sm-6 mb-3">
                <label class="form-label" for="ab-subcategory">유형<span class="text-danger">*</span></label>
                <select class="form-select" id="place_type" name="place_type" value="" required>
                  <option value="" disabled>유형을 선택하세요</option>
                  <option value="야외활동" <c:if test="${place.place_type == '야외활동'}">${'selected'} </c:if>>야외활동</option>
                    <option value="전시" <c:if test="${place.place_type == '전시'}">${'selected'} </c:if>>전시</option>
                    <option value="유적지" <c:if test="${place.place_type == '유적지'}">${'selected'} </c:if>>유적지</option>
                    <option value="쇼핑" <c:if test="${place.place_type == '쇼핑'}">${'selected'} </c:if>>쇼핑</option>
                    <option value="기타" <c:if test="${place.place_type == '기타'}">${'selected'} </c:if>>기타</option>
                </select>
              </div>

              <div class="col-sm-6 mb-3">
                <label class="form-label" for="ab-subcategory">세부 유형<span class="text-danger">*</span></label>
                <select class="form-select" id="place_act" name="place_act" value="${place.place_act}" required>
                    <option value="" disabled>세부 유형을 선택하세요</option>
                    <option value="공원" <c:if test="${place.place_act == '공원'}">${'selected'} </c:if>>공원</option>
                    <option value="궁궐" <c:if test="${place.place_act == '궁궐'}">${'selected'} </c:if>>궁궐</option>
                    <option value="미술관" <c:if test="${place.place_act == '미술관'}">${'selected'} </c:if>>미술관</option>
                    <option value="박물관" <c:if test="${place.place_act == '박물관'}">${'selected'} </c:if>>박물관</option>
                    <option value="수목원" <c:if test="${place.place_act == '수목원'}">${'selected'} </c:if>>수목원</option>
                    <option value="유원지" <c:if test="${place.place_act == '유원지'}">${'selected'} </c:if>>유원지</option>
                    <option value="백화점" <c:if test="${place.place_act == '백화점'}">${'selected'} </c:if>>백화점</option>
                    <option value="전통시장" <c:if test="${place.place_act == '전통시장'}">${'selected'} </c:if>>전통시장</option>
                    <option value="기타" <c:if test="${place.place_act == '기타'}">${'selected'} </c:if>>기타</option>
                  </select>
              </div>
              
            <!-- Contacts-->
                <div class="col-sm-6 mb-3">
                  <label class="form-label" for="ab-phone">연락처 <span class="text-danger">*</span></label>
                  <input class="form-control" type="tel" id="place_tel" name="place_tel" value="${place.place_tel}" placeholder="연락처를 입력하세요" required>
                </div>

                <div class="col-sm-6 mb-3">
                  <label class="form-label" for="ab-title">주소 <span class="text-danger">*</span></label>
                  <input class="form-control" type="text" id="place_addr" name="place_addr" value="${place.place_addr}" placeholder="주소를 입력하세요" required>
                </div>
              <!-- 설명 -->
              <label class="form-label" for="ab-description">소개 <span class="text-danger">*</span></label>
              <div class="row mb-4">
                <div class="col-md-9 mb-md-0 mb-3">
                  <textarea class="form-control" id="place_content" name="place_content" rows="6" placeholder="소개를 입력하세요" required>${place.place_content}</textarea><span class="form-text"></span>
                </div>
              </div>

               <!-- 영업시간 -->
                <div class="col-sm-6 mb-3">
                  <label class="form-label" for="ab-subcategory">영업시간<span class="text-danger">*</span></label>
                  <div class="input-group" >
                    <input class="form-control" id="open" name="open" type="time" value="${open}">
                    <input class="form-control" id="close" name="close" type="time" value="${close}">                 
                 </div>
                </div>
            </section>
            
            <!-- Photos / video-->
            <section class="card card-body border-0 shadow-sm p-4 mb-4" enctype="multipart/form-data" >
              <h2 class="h4 mb-4"><i class="fi-image text-primary fs-5 mt-n1 me-2"></i>사진 / 파일</h2>
              <div class="alert alert-info mb-4" role="alert">
                <div class="d-flex"><i class="fi-alert-circle me-2 me-sm-3"></i>
                  <p class="fs-sm mb-1">The maximum photo size is 8 MB. 사진 형식: jpeg, jpg, png. Put the main picture first.<br>The maximum video size is 10 MB. Formats: mp4, mov.</p>
                </div>
              </div>
              <c:forTokens var="photo" items="${place.place_photo}" delims="," begin="0" end="3">
                <div><img class="rounded-3" src="<%=request.getContextPath()%>/upload/${photo}" alt="Image"/></div>
              </c:forTokens>
              <input type="file" id="place_photos" name="place_photos" value="${place.place_photo}" multiple>
             <!--  <input class="file-uploader file-uploader-grid" type="file" id=place_photo1 name="place_photo1" multiple data-max-file-size="10MB" accept="image/png, image/jpeg, video/mp4, video/mov" data-label-idle="&lt;div class=&quot;btn btn-primary rounded-pill mb-3&quot;&gt;&lt;i class=&quot;fi-cloud-upload me-1&quot;&gt;&lt;/i&gt;사진 / 파일 업로드&lt;/div&gt;&lt;br&gt;or drag them in"> -->
            </section>
            
            <div class="d-sm-flex justify-content-between pt-2">
               <button class="btn btn-primary btn-lg d-block rounded-pill mb-2" type="submit">저장하기</button>
            </div>
            <!-- Action buttons -->
           <!--  <section class="d-sm-flex justify-content-between pt-2"><a class="btn btn-outline-primary btn-lg d-block rounded-pill mb-3 mb-sm-2" href="#preview-modal" data-bs-toggle="modal"><i class="fi-eye-on ms-n1 me-2"></i>미리보기</a><button class="btn btn-primary btn-lg d-block rounded-pill mb-2" type="submit">저장하기</button></section> -->
          </div>
         </form>
         
        </div>
      </div>
    </main>
    <!-- Banner-->
    <div class="text-center fs-sm pt-4 mt-3 pb-2">&copy; All rights reserved. Made by <a href='https://createx.studio/' class='d-inline-block nav-link p-0' target='_blank' rel='noopener'>Createx Studio</a></div>
  </div>
</footer>
<!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon fi-chevron-up">   </i></a>
<!-- Vendor scrits: js libraries and plugins-->
<script src="vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="vendor/simplebar/dist/simplebar.min.js"></script>
<script src="vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<script src="vendor/leaflet/dist/leaflet.js"></script>
<script src="vendor/filepond-plugin-file-validate-type/dist/filepond-plugin-file-validate-type.min.js"></script>
<script src="vendor/filepond-plugin-file-validate-size/dist/filepond-plugin-file-validate-size.min.js"></script>
<script src="vendor/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.min.js"></script>
<script src="vendor/filepond-plugin-image-crop/dist/filepond-plugin-image-crop.min.js"></script>
<script src="vendor/filepond-plugin-image-resize/dist/filepond-plugin-image-resize.min.js"></script>
<script src="vendor/filepond-plugin-image-transform/dist/filepond-plugin-image-transform.min.js"></script>
<script src="vendor/filepond/dist/filepond.min.js"></script>
<script src="vendor/cleave.js/dist/cleave.min.js"></script>
<!-- Main theme script-->
<script src="js/theme.min.js"></script>
</body>
</html>