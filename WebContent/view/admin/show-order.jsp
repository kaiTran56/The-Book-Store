<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");

if (session.getAttribute("admin-username") == null) {
	response.sendRedirect(request.getContextPath() + "/admin/login");
}
%>
<!-- Start header section -->
<jsp:include page="./header/header.jsp" flush="true" />
<div class="content-wrapper">
	<div class="container-fluid">
		<!--End Row-->


		<div class="row">

			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">List Orders</h5>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr>

										<th scope="col">User Name</th>
										<th scope="col">Email</th>
										<th scope="col">Phone</th>
										<th scope="col">Address</th>
										<th scope="col">Note</th>
										<th scope="col">Payment</th>
										<th scope="col">Status</th>
										<th scope="col">Product</th>
										<th scope="col">Quantity</th>
										<th scope="col">Created Day</th>
										<th scope="col">Actions</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach items="${order}" var="order">
										<tr>

											<td>${order.user.name}</td>
											<td>${order.user.email}</td>
											<td>${order.user.phone}</td>
											<td>${order.user.address}</td>
											<td>${order.message}</td>
											<td>${order.payment}VND</td>

											<td><c:choose>
													<c:when test="${order.status == NULL}">
														<c:out value="Finished!" />
													</c:when>
													<c:otherwise>
														<c:out value="Not Finished!" />
													</c:otherwise>
												</c:choose></td>

											<td>${order.ordered.name}</td>
											<td>${order.ordered.amount}</td>
											<td>${order.created}</td>


											<td>
												<button class="btn btn-danger">
													<a
														href="${pageContext.request.contextPath}/admin/order/delete?id=${order.transaction_id}">Remove</a>
												</button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="./footer/footer.jsp" flush="true" />