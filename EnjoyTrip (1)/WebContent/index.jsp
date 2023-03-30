<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <!-- Head Start-->
	 <%@ include file="/include/head.jsp" %>
   <!-- Head End-->
  <body>
    <!-- Navigation Start-->
		<%@ include file="/include/nav.jsp" %>
    <!-- Navigation End-->
    <!-- Header-->
		<%@ include file="/include/header.jsp" %>
    <!-- Section-->
    <section class="py-5">
      <div class="container px-4 px-lg-5 mt-5">
        <div
          class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center"
        >
          				<c:forEach items="${requestScope.infoserviceList}" var="list"
					varStatus="status">
					<div class="col mb-5">
						<div class="card h-100">
							<!-- Sale badge-->
							<!-- Product image-->
							<img class="card-img-top" src="${list.img}"
								alt="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
								width="400" height="250" />
							<!-- Product details-->
							<div class="card-body p-4">
								<div class="text-center">
									<!-- Product name-->
									<h3 class="fw-bolder">${list.title}</h3>
									<!-- Product reviews-->

									<!-- Product price-->
								</div>
							</div>
							<!-- Product actions-->
							<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								<div class="text-center">
									<button class="btn btn-outline-dark mt-auto"
										onclick="modalToggle${status.count}()">Add to cart</button>
								</div>
							</div>
						</div>
					</div>

					<div class="modal_detail fade modal${status.count}">
						<div class="modal_detail_content">
							${status.count}
							<button class="btn close_btn btn${status.count}">close</button>

						</div>
					</div>
					<script type="text/javascript">
						// 상세정보 모달 창 띄우거나 제거하는 함수
						function modalToggle${status.count}() {
							const modal = document
									.querySelector(".modal_detail.modal${status.count}");
							modal.classList.toggle("fade");
						}

						document.querySelector(".close_btn.btn${status.count}").onclick = modalToggle${status.count};
					</script>
				</c:forEach>

        </div>
      </div>
    </section>
    <!-- Footer-->
	<%@ include file="/include/footer.jsp" %>

	<%@ include file="/Modal/modal.jsp" %>

     <!-- Bootstrap core JS-->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
   <!-- Core theme JS-->
   <script src="js/scripts.js"></script>
  </body>
</html>
