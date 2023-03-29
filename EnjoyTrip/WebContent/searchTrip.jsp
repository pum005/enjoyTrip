<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Shop Homepage - Start Bootstrap Template</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
      rel="stylesheet"
    />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
  </head>
  <body>
    <!-- Navigation start-->
	<%@ include file="/include/nav.jsp" %>
	<!-- Navigation end-->
    <!-- Header-->
	<%@ include file="/include/header.jsp" %>
    <!-- Section-->
    <div class="row justify-content-center">
      <!-- 중앙 content start -->
    <div class="container">
      <div style="height: 70px"></div>
      <div class="row justify-content-center">
        <!-- 중앙 center content end -->
        <div class="col-md-9">
          <div
            class="alert alert-primary mt-3 text-center fw-bold"
            role="alert"
          >
            전국 관광지 정보
          </div>
          <!-- 관광지 검색 start -->
          <form class="d-flex my-3" onsubmit="return false;" role="search">
            <select id="search-area" class="form-select me-2">
              <option value="0" selected>검색 할 지역 선택</option>
            </select>
            <select id="search-content-id" class="form-select me-2">
              <option value="0" selected>관광지 유형</option>
              <option value="12">관광지</option>
              <option value="14">문화시설</option>
              <option value="15">축제공연행사</option>
              <option value="25">여행코스</option>
              <option value="28">레포츠</option>
              <option value="32">숙박</option>
              <option value="38">쇼핑</option>
              <option value="39">음식점</option>
            </select>
            <input
              id="search-keyword"
              class="form-control me-2"
              type="search"
              placeholder="검색어"
              aria-label="검색어"
            />
            <button
              id="btn-search"
              class="btn btn-outline-success"
              type="button"
            >
              검색
            </button>
          </form>
          <!-- kakao map start -->
          <div id="map" class="mt-3" style="width: 100%; height: 800px"></div>
          <!-- kakao map end -->

          <!-- 모달 start-->

          <!-- <div
            class="modal fade"
            id="exampleModal"
            tabindex="-1"
            aria-labelledby="exampleModalLabel"
            aria-hidden="true"
          >
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h1 class="modal-title fs-5" id="exampleModalLabel">
                    Modal title
                  </h1>
                  <button
                    type="button"
                    class="btn-close"
                    data-bs-dismiss="modal"
                    aria-label="Close"
                  ></button>
                </div>
                <div class="modal-body">...</div>
                <div class="modal-footer">
                  <button
                    type="button"
                    class="btn btn-secondary"
                    data-bs-dismiss="modal"
                  >
                    Close
                  </button>
                  <button type="button" class="btn btn-primary">
                    Save changes
                  </button>
                </div>
              </div>
            </div>
          </div> -->
          <!-- 모달 end -->
          <!-- 관광지 검색 end -->
        </div>
      </div>
    <!-- 중앙 content end -->
  </div>
      <!-- Footer-->
	  <%@ include file="/include/footer.jsp" %>

      <div class="modal_detail fade">
        <div class="modal_detail_content">
          <button class="btn close_btn">close</button>
        </div>
      </div>


     <!-- Bootstrap core JS-->
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
     <!-- Core theme JS-->
     <script src="js/scripts.js"></script>
     <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
     <!-- * *                               SB Forms JS                               * *-->
     <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
     <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
     <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

    <script src="./js/key.js"></script>
    <script
      type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c2923dccbd4d7c481eb811c726a81b7a&libraries=services,clusterer,drawing"
    ></script>

    <script src="./js/kakaoMap.js"></script>
  </body>
</html>
