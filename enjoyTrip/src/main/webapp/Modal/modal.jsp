<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Modal -->
<form action="" method="post">
	<div
	  class="modal fade"
	  id="register"
	  data-bs-backdrop="static"
	  data-bs-keyboard="false"
	  tabindex="-1"
	  aria-labelledby="staticBackdropLabel"
	  aria-hidden="true"
	>
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="staticBackdropLabel">
	          Modal title
	        </h1>
	        <button
	          type="button"
	          class="btn-close"
	          data-bs-dismiss="modal"
	          aria-label="Close"
	        ></button>
	      </div>
	      <div class="modal-body">
	        <div class="member_login_input">
	          <div>이름</div>
	          <input type="text" name="username" placeholder="이름" />
	        </div>
	
	        <div class="member_login_input">
	          <div>아이디</div>
	          <input type="text" name="identify" placeholder="아이디" />
	        </div>
	
	        <div class="member_login_input">
	          <div>비밀번호</div>
	          <input type="text" name="password" placeholder="비밀번호" />
	        </div>
	
	        <div class="member_login_input">
	          <div>비밀번호확인</div>
	          <input
	            type="password"
	            name="passwordcheck"
	            placeholder="비밀번호확인"
	          />
	        </div>
	
	        <div class="member_login_input">
	          <div>이메일</div>
	          <input type="text" name="email" placeholder="이메일" />
	        </div>
	      </div>
	      <div class="modal-footer">
	        <button type="submit" class="btn btn-primary">회원가입</button>
	        <button
	          type="button"
	          class="btn btn-secondary"
	          data-bs-dismiss="modal"
	        >
	          취소
	        </button>
	      </div>
	    </div>
	  </div>
	</div>
</form>


<!-- login Modal -->
<form action="${root}/auth">
  <input type="hidden" name="action" value="login">
  <div
  class="modal fade"
  id="login"
  data-bs-backdrop="static"
  data-bs-keyboard="false"
  tabindex="-1"
  aria-labelledby="staticBackdropLabel"
  aria-hidden="true"
>
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">로그인</h1>
        <button
          type="button"
          class="btn-close"
          data-bs-dismiss="modal"
          aria-label="Close"
        ></button>
      </div>
      <div class="modal-body">
        <div class="member_login_input">
          <div>아이디</div>
          <input type="text" name="id" placeholder="아이디" value="${cookie.rememberId.value}"/>
          <input type="checkbox" name="isRemember" ${(empty cookie.rememberId)? "" : "checked"}/>																																																																																																																																				₩₩₩₩₩₩₩₩₩₩₩₩₩₩₩₩₩iv>
		</div>
        <div class="member_login_input">
          <div>비밀번호</div>
          <input type="password" name="password" placeholder="비밀번호" />
        </div>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">로그인</button>
        <button
          type="button"
          class="btn btn-secondary"
          data-bs-dismiss="modal"
        >
          취소
        </button>
      </div>
    </div>
  </div>
</div>
</form>