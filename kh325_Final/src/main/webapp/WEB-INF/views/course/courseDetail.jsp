<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Directory Theme by Bootstrapious</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">

    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="${path}/resources/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="${path}/resources/vendor/magnific-popup/magnific-popup.css">
    <!-- Leaflet Maps-->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css" integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ==" crossorigin="">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${path}/resources/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${path}/resources/css/customKNI.css">
    <link rel="stylesheet" href="${path}/resources/css/addMap.css">
    <link rel="stylesheet" href="${path}/resources/css/course_detail.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" 
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">


</head>

<style>
    @font-face {
        font-family: 'pBlack';
        font-weight: 900;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-Black.ttf);
    }
    
    .text-pBlack {
        font-family: 'pBlack';
    }
    
    @font-face {
        font-family: 'pEb';
        font-weight: 800;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-ExtraBold.ttf);
    }
    
    .text-pEb {
        font-family: 'pEb';
    }
    
    @font-face {
        font-family: 'pB';
        font-weight: 700;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-Bold.ttf);
    }
    
    .text-pB {
        font-family: 'pB';
    }
    
    @font-face {
        font-family: 'pSb';
        font-weight: 600;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-SemiBold.ttf);
    }
    
    .text-pSb {
        font-family: 'pSb';
    }
    
    @font-face {
        font-family: 'pM';
        font-weight: 500;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-Medium.ttf);
    }
    
    .text-pM {
        font-family: 'pM';
    }
    
    @font-face {
        font-family: 'pR';
        font-weight: 400;
        font-display: swap;
        letter-spacing: 1px;
        src: url(${path}/resources/font/Pretendard-Regular.ttf);
    }
    
    .text-pR {
        font-family: 'pR';
    }
    
    @font-face {
        font-family: 'pL';
        font-weight: 300;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-Light.ttf);
    }
    
    .text-pL {
        font-family: 'pL';
    }
    
    @font-face {
        font-family: 'pEl';
        font-weight: 200;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-ExtraLight.ttf);
    }
    
    .text-pEl {
        font-family: 'pEl';
    }
    
    @font-face {
        font-family: 'pThin';
        font-weight: 100;
        font-display: swap;
        src: url(${path}/resources/font/Pretendard-Thin.ttf);
    }
    
    .text-pThin {
        font-family: 'pThin';
    }
    
    div {
        font-family: 'pR';
        letter-spacing: -1px;
    }
    /*폰트 끝*/
</style>




<body style="padding-top: 72px;">
     <jsp:include page="/WEB-INF/views/common/darkHeader.jsp">
			<jsp:param value="예아바디" name="title"/>
	</jsp:include>

    <section>
        <!-- Slider main container-->
        <div class="swiper-container detail-slider slider-gallery pt-4">
            <!-- Additional required wrapper-->
            <div class="swiper-wrapper">
                <!-- Slides-->
                 <c:if test="${!empty detailCourseList}">
				<c:forEach var="MyCourseSearch" items="${detailCourseList}"> 
                <div class="swiper-slide">
                    <a href="${MyCourseSearch.firstImage}" data-toggle="gallery-top" title="Our street"><img style="height: 300px; width:100%;" src="${MyCourseSearch.firstImage}" alt="Our street"></a>
                </div> 
                </c:forEach>
                 </c:if>

            </div>
            <div class="swiper-pagination swiper-pagination-white"></div>
            <div class="swiper-button-prev swiper-button-white"></div>
            <div class="swiper-button-next swiper-button-white"></div>
        </div>
    </section>
    <div class="container py-5">
        <div class="row">
            <div class="col-lg-auto">
                <div class="row mt-2">
                    <div class="col-md-1" style="    
                    padding: 0.5em 0.7em;
                    line-height: 1;
                    color: #fff;
                    text-align: center;
                    white-space: nowrap;
                    vertical-align: baseline ;
                background:#FD9F28; border-radius: 40px;color:#fff;font-weight:700; font-size: 160%;"><c:out value="${detailCourseList.size()}"/>코스
                    </div>
                    <div class="col-md-11">
                        <span class="h1" style="font-family: pB;"><c:out value="${detailCourseList.get(0).getMyCourseTitle()}"/></span>
                    </div>
                </div>
                <div class="row mb-4">
                    <ul class="col-6 list-inline mt-4 mb-2 text-pB">
                        <li class="list-inline-item me-lg-4 " style="color:#907B65; font-size: 20px;"><i class="fa-map-marker-alt fa me-1"></i><c:out value="${detailCourseList.get(0).getAddr1()}"/></li>
                        <li class="list-inline-item me-lg-4" style="color:#907B65; font-size: 20px;">
                            <i class="fa fa-regular fa-calendar px-2"></i><c:out value="${detailCourseList.get(0).getMyCourseSchedule()}"/>
                        </li>
                        <li class="list-inline-item me-lg-4" style="color:#907B65; font-size: 20px;">
                            <i class="fa fa-map-marked-alt h-auto px-2"></i><c:out value="${detailCourseList.get(0).getMyCourseThema()}"/>
                        </li>
                    </ul>
                    <ul class="col-6 list-inline mt-4 mb-2 text-end text-pB">
                        <li class="list-inline-item me-3" style="color:#907B65; font-size: 20px;">
                            <a class="text-secondary " href="#"> <i class="fa fa-heart  h-auto px-2"></i>즐겨찾기</a>
                        </li>
                        <li class="list-inline-item me-lg-4" style="color:#907B65; font-size: 20px;">
                            <a class="text-secondary " href="#"> <i class="fa fa-bookmark  h-auto px-2"></i>나의코스</a>
                        </li>
                    </ul>
                    <hr>
                </div>
                <div class="row">
                    <p class="text-muted fw-light mb-4"><c:out value="${detailCourseList.get(0).getMyCourseContent()}"/>
                    </p>
                </div>
                <hr>
                <p class="subtitle text-sm text-pB" style="color:#907B65;">Travel Plan </p>
                <h5 class="mb-4 text-pEb">여행코스 정보
                </h5>
                <div class="py-3 " style="background-color:rgb(247, 245, 240)">
                    <div class="container">

                        <!-- Nav tabs -->
                        <div class="swiper-container nav nav-tabs swiper-init pt-3" data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}"
                            role="tablist">

                            <!-- Additional required wrapper-->
                            <div class="swiper-wrapper pb-5">
                                <!-- Slides-->
                                  <c:if test="${!empty detailCourseList}">
										<c:forEach var="MyCourseSearch" items="${detailCourseList}" varStatus="status"> 
                                <div class="swiper-slide h-auto px-1">
                                    <!-- place item-->
                                   
                                    <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
                                        <div class="card h-100 border-0 shadow">
                                            <div class="card-img-top h-75  overflow-hidden gradient-overlay">
                                                <img class="" style="height: 100%; width:100%;" src="${MyCourseSearch.firstImage}" />
                                                <a class="tile-link" href="#myCourse${status.index +1}" data-bs-toggle="tab" role="tab"></a>
                                                <div class="card-img-overlay-bottom z-index-20 ">
                                                    <div class="d-flex text-white text-sm align-items-center ">
                                                        <div style="font-family: pB; font-size:larger"><em><c:out value="${status.index +1}"/>코스</em></div>
                                                    </div>
                                                </div>
                                                <div class="card-img-overlay-top text-end">
                                                    <a class=" heart_pink card-fav-icon position-relative z-index-50  " href="${path}/resources/javascript: void();">
                                                        <i class="fas fa-heart svg-icon"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="card-body d-flex align-items-center">
                                                <div class="row w-100 txt_line ">

                                                    <p class="card-title col-md-7"><a class="courseList_title text-black" href="#"><c:out value="${MyCourseSearch.detailTitle}"/></a>
                                                    </p>
                                                    <div class="d-flex col-md-3" style="text-align: center">
                                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-start"><c:forEach begin="1" end="${MyCourseSearch.detailCntRevStar}" step="1"><i class="fa fa-star text-warning "></i></c:forEach>
                                <c:if test="${MyCourseSearch.detailCntRevStar < 5}"><c:forEach begin="${MyCourseSearch.detailCntRevStar+1}" end="5" step="1"><i class="fa fa-xs fa-star text-gray-200"></i></c:forEach></c:if>
                                                        </p>
                                                        <span class="text-primary justify-center"><c:out value="${MyCourseSearch.detailCntRevStar}"/>/5</span>
                                                    </div>
                                                    <p class="text-sm text-black-50 card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i><c:out value="${MyCourseSearch.addr1}"/></p>
                                                    <div class=" card-text text-muted 
                                                        text-sm text-black-50 txt_line">
                                                        <div class="courseList_info"><c:out value="${MyCourseSearch.overview}"/>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                               </div>
                                    
                             
                                     </c:forEach>
                				 </c:if>
                            </div>
                        </div>

                        <!-- Tabs content -->
                        <div class="container tab-content">
                        <c:if test="${!empty detailCourseList}">
							<c:forEach var="i" begin="1" end="${detailCourseList.size()}" step="1" varStatus="status"> 
                            <div class="tab-pane fade" id="myCourse${i}" role="tabpanel">
                                <div>
                                    <p class="mt-2 mb-2" style="font-family:pB;"><i class="fa fa-arrow-right p-lg-2 "></i><em><c:out value="${i}"/>코스 &nbsp;<c:out value="${detailCourseList.get(i-1).getDetailTitle()}"/></em></p>
                                </div>
                                <div class="row gallery mb-3">
                                	<c:if test="${!empty myCourseImageList}">
                                	<c:forEach var="MyCourseImage" items="${myCourseImageList}" varStatus="status"> 
                                	<c:if test="${MyCourseImage.myCourseSn eq i}">
                                    <div class="col-lg-4 col-6 px-1 mb-2">
                                        <a href="${MyCourseImage.originImgUrl}" data-fancybox="gallery" title="Our street"><img style="height: 100%; width:100%;" src="${MyCourseImage.originImgUrl}" alt="..."></a>
                                    </div>
                                    </c:if>
                                    </c:forEach>
                                    </c:if>
                                </div>
                            </div>
						</c:forEach>
                           </c:if>
                        </div>
                    </div>

                </div>
                <div class="text-block">
                    <p class="subtitle text-sm text-pB" style="color:#907B65;">Location</p>
                    <h5 class="mb-5 text-pEb">여행코스 위치정보</h5>
                        <div class="map-wrapper-450 mt-3">
                            <div class="h-100" id="detailMap"></div>
                        </div>
                </div>
                <div class="text-block">
                    <p class="subtitle text-sm text-pB" style=" color:#907B65; ">Reviews </p>
                    <h5 class="mb-4 text-pEb">여행코스 후기 </h5>
                    <c:if test="${!empty myCourseRevList}">
					<c:forEach var="MyCourseRev" items="${myCourseRevList}" varStatus="status"> 
                    <div class="d-flex d-block d-sm-flex review" style="padding-top: 1rem; padding-bottom: 1rem;">
                        <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img class="d-block avatar avatar-xl p-2 mb-2" src="${path}/resources/img/avatar/NAIM2.png" alt="Padmé Amidala"><span class="text-uppercase text-muted text-sm"></span></div>
                        <div>
                            <h6 class="mt-2 mb-1"><c:out value="${MyCourseRev.userName}"></c:out></h6>
                            <div class="mb-0"><c:forEach begin="1" end="${MyCourseRev.cntRevStar}" step="1"><i class="fa fa-star text-warning "></i></c:forEach>
                                <c:if test="${MyCourseRev.cntRevStar < 5}"><c:forEach begin="${MyCourseRev.cntRevStar+1}" end="5" step="1"><i class="fa fa-xs fa-star text-gray-200"></i></c:forEach></c:if>
                            </div>
                            <p class="text-muted text-sm"><c:out value="${MyCourseRev.mcRevContent}"></c:out></p>
                        </div>
                    </div>           
                    </c:forEach>
					</c:if>
                    <div class="py-5">
                        <button class="btn btn-outline-warning" type="button" data-bs-toggle="collapse" data-bs-target="#leaveReview" aria-expanded="false" aria-controls="leaveReview">Leave a review</button>
                        <div class="collapse mt-4" id="leaveReview">
                            <h5 class="mb-4 text-pB">Leave a review</h5>
                            <form class="form" id="contact-form" method="get" action="#">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="mb-4">
                                            <label class="form-label text-pB" for="name">Your name *</label>
                                            <input class="form-control" type="text" name="name" id="name" placeholder="이름이나 닉네임을 입력해주세요" required="required">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="mb-4">
                                            <label class="form-label text-pB" for="rating">Your rating *</label>
                                            <select class="form-select focus-shadow-0" name="rating" id="rating">
                          <option value="5">&#9733;&#9733;&#9733;&#9733;&#9733; (5/5)</option>
                          <option value="4">&#9733;&#9733;&#9733;&#9733;&#9734; (4/5)</option>
                          <option value="3">&#9733;&#9733;&#9733;&#9734;&#9734; (3/5)</option>
                          <option value="2">&#9733;&#9733;&#9734;&#9734;&#9734; (2/5)</option>
                          <option value="1">&#9733;&#9734;&#9734;&#9734;&#9734; (1/5)</option>
                        </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <label class="form-label text-pB" for="email">Your email *</label>
                                    <input class="form-control" type="email" name="email" id="email" placeholder="이메일을 입력해주세요" required="required">
                                </div>
                                <div class="mb-4">
                                    <label class="form-label text-pB" for="review">Review text *</label>
                                    <textarea class="form-control" rows="4" name="review" id="review" placeholder="여행은 즐거우셨나요? 방문하신 장소에 대한 후기를 남겨주세요" required="required"></textarea>
                                </div>
                                <button class="btn btn-warning" type="submit">Post review</button>
                            </form>
                        </div>
                    </div>
                    <!-- Pagination -->
                    <nav aria-label="Page navigation example">
                        <ul class="pagination pagination-template d-flex justify-content-center ">
                            <li class="page-item-course ">
                                <a class="page-link-course " href="# "> <i class="fa fa-angle-left "></i></a>
                            </li>
                            <li class="page-item-course active "><a class="page-link-course" href="# ">1</a></li>
                            <li class="page-item-course "><a class="page-link-course " href="# ">2</a></li>
                            <li class="page-item-course "><a class="page-link-course " href="# ">3</a></li>
                            <li class="page-item-course ">
                                <a class="page-link-course " href="# "> <i class="fa fa-angle-right "></i></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>

      <!-- Footer-->
    <footer class="position-relative z-index-10 d-print-none">
      <!-- Main block - menus, subscribe form-->
      <div class="py-5 bg-gray-200 text-muted">
        <div class="container">
          <div class="row">
            <div class="col-lg-4 mb-5 mb-lg-0">
              <img src="${path}/resources/image/togetherLogo.png" height="60" width="140" alt="">
              <div class="text-black mb-4 ps-3 ms-sm-4" style="font-family:pM;">TOGETHER, to GET THERE</div>
              <div class="mt-4 pt-2 ps-3 ms-sm-4">
                <span class="text-muted text-sm">김나임ㅣ김태은ㅣ박혜연ㅣ선형채ㅣ윤하영ㅣ정수아ㅣ정원일</span>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-5 mb-lg-0 pt-4 ms-4">
              <h6 class="text-dark mb-2">CONTACT
              <ul class="list-unstyled">
                <li class="mt-sm-2" style="font-family:pEl; letter-spacing:0px;">
                  <a class="text-muted" href="category-rooms.html">1544-9970</a>
                </li>
              </ul>
            </h6>

            <h6 class="text-dark mb-2">ADDRESS
            <ul class="list-unstyled">
              <li class="mt-sm-2" style="font-family:pEl; letter-spacing:0px;">
                <a class="text-muted" href="category-rooms.html">서울특별시 강남구 테헤란로14길 6 남도빌딩<br><br></a>
              </li>
            </ul>
            </h6>
            </div>
            
            <div class="col-lg-3 pt-4" style="font-family:pB;">
              <h6 class="fs-5 text-dark mb-2">정기구독 & 뉴스레터</h6>
              <p class="mb-3"> 투게더의 소식을 정기적으로 받아보세요</p>
              <form action="#" id="newsletter-form">
                <div class="input-group mb-3">
                  <input class="form-control bg-transparent border-dark
                    border-end-0" type="email" placeholder="Your Email Address"
                    aria-label="Your Email Address">
                  <button class="btn btn-outline-dark border-start-0"
                    type="submit"> <i class="fa fa-paper-plane text-lg"></i></button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- Copyright section of the footer-->
      <div class="py-4 fw-light bg-gray-800 text-gray-300">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-6 text-center text-md-start">
              <p class="text-sm mb-md-0">&copy; 2022, TOGETHER. All rights
                reserved.</p>
            </div>
            <div class="col-md-6">
              <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end">
                <li class="list-inline-item"><img class="w-2rem"
                    src="${path}/resources/img/visa.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem"
                    src="${path}/resources/img/mastercard.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem"
                    src="${path}/resources/img/paypal.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem"
                    src="${path}/resources/img/western-union.svg" alt="..."></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- JavaScript files-->
    <script>
        // ------------------------------------------------------- //
        //   Inject SVG Sprite - 
        //   see more here 
        //   https://css-tricks.com/ajaxing-svg-sprite/
        // ------------------------------------------------------ //
        function injectSvgSprite(path) {

            var ajax = new XMLHttpRequest();
            ajax.open("GET", path, true);
            ajax.send();
            ajax.onload = function(e) {
                var div = document.createElement("div");
                div.className = 'd-none';
                div.innerHTML = ajax.responseText;
                document.body.insertBefore(div, document.body.childNodes[0]);
            }
        }
        // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
        // use your own URL in production, please :)
        // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
        //- injectSvgSprite('${path}icons/orion-svg-sprite.svg'); 
        injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg');
    </script>
    <!-- jQuery-->
    <script src="${path}/resources/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="${path}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="${path}/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="${path}/resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="${path}/resources/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>
        var basePath = ''
    </script>
    <!-- Main Theme JS file    -->
    <script src="${path}/resources/js/theme.js"></script>
    <!-- Map-->
   <!--  <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js" integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og==" crossorigin=""></script> -->
    <!-- Available tile layers-->
    <script src="${path}/resources/js/map-layers.js">
    </script>
    <script src="${path}/resources/js/map-detail.js"></script>
    <script>
        createListingsMap({
            mapId: 'detailMap',
            jsonFile: '${path}/resources/js/restaurants-geojson.json',
            //tileLayer: tileLayers[5]  - uncomment for a different map styling
        });
    </script>
    <script type="${path}/resources/text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cf195a29b50143fef5883a438669e5bb"></script>

    <script>
        //  지도 
        // src = " https://code.jquery.com/jquery-3.2.1.min.js"

        // type = "text/javascript"
        // src = "//dapi.kakao.com/v2/maps/sdk.js?appkey=cf195a29b50143fef5883a438669e5bb&libraries=clusterer"

        //  일반지도 

        var mapContainer = document.getElementById('detailMap'), // 지도를 표시할 div 
            mapOption = {
                center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                level: 2, // 지도의 확대 레벨
                mapTypeId: kakao.maps.MapTypeId.ROADMAP // 지도종류
            };

        // 지도를 생성한다 
        var map = new kakao.maps.Map(mapContainer, mapOption);

        // 마커를 표시할 위치와 title 객체 배열입니다 
        var positions = [{
            title: '카카오',
            latlng: new kakao.maps.LatLng(33.450705, 126.570677),
            image: 'https://api.cdn.visitjeju.net/photomng/imgpath/201812/19/a1056453-2576-4cca-bf62-d2649b5c2077.JPG',
            address: '제주특별자치도 제주시 첨단로 242'
        }, {
            title: '생태연못',
            latlng: new kakao.maps.LatLng(33.450936, 126.569477),
            image: 'https://t1.kakaocdn.net/kakaocorp/corp_thumbnail/Kakao.png',
            address: '제주특별자치도 제주시 첨단로 242 생태연못'
        }, {
            title: '텃밭',
            latlng: new kakao.maps.LatLng(33.450879, 126.569940),
            image: 'https://upload.wikimedia.org/wikipedia/ko/8/87/Kakaofriends.png',
            address: '제주특별자치도 제주시 첨단로 242 텃밭'
        }, {
            title: '근린공원',
            latlng: new kakao.maps.LatLng(33.451393, 126.570738),
            image: 'data:image/jpeg;base64,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',
            address: '제주특별자치도 제주시 첨단로 242 근린공원'
        }];

        // 지도에 확대 축소 컨트롤을 생성한다
        var zoomControl = new kakao.maps.ZoomControl();

        // 지도의 우측에 확대 축소 컨트롤을 추가한다
        map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

        // 마커 이미지의 주소
        var markerImageUrl = "${path}/resources/img/marker3.png",
            markerImageSize = new kakao.maps.Size(40, 42), // 마커 이미지의 크기
            markerImageOptions = {
                offset: new kakao.maps.Point(20, 42) // 마커 좌표에 일치시킬 이미지 안의 좌표
            };

        // 마커 이미지의 이미지 크기 입니다
        var imageSize = new kakao.maps.Size(24, 35);

        // 마커 이미지를 생성합니다    
        var markerImage = new kakao.maps.MarkerImage(markerImageUrl, imageSize);

        for (let i = 0; i < positions.length; i++) {
            var data = positions[i];
            displayMarker(data);
        }

        // 지도에 마커를 표시하는 함수입니다    
        function displayMarker(data) {
            var marker = new kakao.maps.Marker({
                map: map,
                position: data.latlng,
                image: markerImage
            });
            var overlay = new kakao.maps.CustomOverlay({
                yAnchor: 1,
                position: marker.getPosition()
            });

            // var content = document.getElementById('clickMarkerInfo');
            // var content = document.getElementById('popup_map');
            var content = document.createElement('div');
            content.innerHTML = '<div class="wrap" id="popup_map">' +
                '    <div class="info">' +
                '        <div class="title">' +
                data.title +
                '        </div>' +
                '        <div class="body">' +
                '            <div class="img">' +
                '                <img src="' +
                data.image +
                '" width="73" height="70">' +
                '           </div>' +
                '            <div class="desc">' +
                '                <div class="ellipsis">' +
                '<MARQUEE>' +
                data.address +
                '</MARQUEE>' +
                '</div>' +
                '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' +
                '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' +
                '            </div>' +
                '        </div>' +
                '    </div>' +
                '</div>';
            // content.innerHTML = data.title;
            // content.style.cssText = 'background: white; border: 1px solid black';

            var closeBtn = document.getElementById('closeBtn');
            var closeBtn = document.createElement('button');
            closeBtn.innerHTML = 'X';
            closeBtn.style.cssText = 'background: rgba(0, 0, 0,0); color: rgba(0, 0, 0,0); border: none';
            closeBtn.onclick = function() {
                overlay.setMap(null);
            };

            content.appendChild(closeBtn);
            overlay.setContent(content);

            var isClick = new kakao.maps.event.addListener(marker, 'click', function() {
                overlay.setMap(map);
                return true;
            });

            if (isClick === true) {
                overlay.setMap(null);
            }

            // kakao.maps.event.addListener(marker, 'click', function() {
            //     overlay.setMap(null);
            // });


        }

        var paths = [];
        for (let i = 0; i < positions.length; i++) {
            var pathDarw = positions[i].latlng;
            paths.push(pathDarw);
        }

        // 지도에 선을 표시한다 
        var polyline = new kakao.maps.Polyline({
            map: map, // 선을 표시할 지도 객체 
            // path: [ // 선을 구성하는 좌표 배열
            //     // new kakao.maps.LatLng(33.450705, 126.570677),
            //     // new kakao.maps.LatLng(33.450936, 126.569477),
            //     // new kakao.maps.LatLng(33.450879, 126.569940),
            //     // new kakao.maps.LatLng(33.451393, 126.570738),
            //     data.latlng,
            // ],
            path: paths,
            // endArrow: true, // 선의 끝을 화살표로 표시되도록 설정한다
            strokeWeight: 3, // 선의 두께
            strokeColor: '#FF846B', // 선 색
            strokeOpacity: 0.5, // 선 투명도
            strokeStyle: 'shortdash' // 선 스타일


        });





        //  버튼 클릭 이벤트 

        var div2 = document.getElementsByClassName("div2");

        function handleClick(event) {
            console.log(event.target);
            // console.log(this);
            // 콘솔창을 보면 둘다 동일한 값이 나온다

            console.log(event.target.classList);

            if (event.target.classList[1] === "clicked") {
                event.target.classList.remove("clicked");
            } else {
                for (var i = 0; i < div2.length; i++) {
                    div2[i].classList.remove("clicked");
                }

                event.target.classList.add("clicked");
            }
        }

        function init() {
            for (var i = 0; i < div2.length; i++) {
                div2[i].addEventListener("click", handleClick);
            }
        }

        init();

        //  버튼 클릭 이벤트 끝 

        //  코스 클릭시 위에 체크박스 해제 

        // 버튼 클릭시 체크박스 해제
        $(function() {

            $("input[name=allNonChk]").click(function() {
                $(":checkbox").prop("checked", false);
            });
        });
        $(function() {

            $("input[id=allNonChk]").click(function() {
                $(":checkbox").prop("checked", false);
            });
        });

        $(document).ready(function() {
            $('input[type="checkbox"][name="course"]').click(function() {
                if ($(this).prop('checked')) {
                    $('input[type="checkbox"][name="place"]').prop('checked', false);
                    $(this).prop('checked', true);
                }
            });
        });

        //  클릭시 div 확장 

        function onDisplay() {
            $('#noneDiv').show();
        }
    </script>
    <script>
        $(document).on('click', '.tile-link.active', function() {
            var href = $(this).attr('href').substring(0);
            $(this).removeClass('active');
            $('.tab-pane[id="' + href + '"]').removeClass('active');
        })
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js">
    </script>
    <script src="${path}/resources/js/datepicker-detail.js">
    </script>
</body>

</html>