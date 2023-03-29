<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container px-4 px-lg-5">
    <a class="navbar-brand" href="index.html">Enjoy Trip</a>
    <button
      class="navbar-toggler"
      type="button"
      data-bs-toggle="collapse"
      data-bs-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="searchTrip.jsp"
            >지역별 여행지</a
          >
        </li>
        <li class="nav-item">
          <a class="nav-link" href="about.jsp">나의 여행계획</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="post.jsp">핫플 자랑하기</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="searchTrip.jsp">여행 정보공유</a>
        </li>
      </ul>
      <div class="dropdown nav-link px-2 py-2 py-lg-5 fs-6 px-5 pt-5 mt-2">
        <button
          type="button"
          class="btn dropdown-toggle"
          data-bs-toggle="dropdown"
        >
          <img src="./assets/img/noimg.png" width="20%" class="img-fluid" />
        </button>
        <ul class="dropdown-menu">
          <li>
            <!-- Button trigger modal -->
            <button
              type="button"
              class="btn"
              data-bs-toggle="modal"
              data-bs-target="#register"
            >
              회원가입
            </button>
          </li>
          <li>
            <button
              type="button"
              class="btn"
              data-bs-toggle="modal"
              data-bs-target="#login"
            >
              로그인
            </button>
          </li>
        </ul>
      </div>
    </div>
  </div>
</nav>