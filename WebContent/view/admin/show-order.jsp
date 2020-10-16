<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
  response.setHeader("Pragma" , "no-cache");
  response.setHeader("Expires" , "0");
  
  
  if (session.getAttribute("admin-username") == null){
	  response.sendRedirect(request.getContextPath() + "/admin/login");
  }
  %>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />
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
                        <th scope="col">#</th>
                       <th scope="col">User</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Phone</th>
                         <th scope="col">Address</th>
                         <th scope="col">Note</th>
                         <th scope="col">Payment</th>
                         <th scope="col">Ways</th>
                         <th scope="col">Status</th>
                          <th scope="col">Created Day</th>
                           <th scope="col">Actions</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                  <c:forEach items="${order}" var="order">
                      <tr>
                        <td scope="row">${order.id}</td>
                         <td>${order.user_session}</td>
                        <td>${order.user_name}</td>
                        <td>${order.user_mail}</td>
                        <td>${order.user_phone}</td>
                        <td>${order.address}</td>
                         <td>${order.message}</td>
                         <td>${order.amount} VNĐ</td>
                          <td>  <c:choose>
	                        <c:when test="${order.payment == 0}"> 
	                        	<c:out value="COD"/>
	                       	</c:when>
	                       	<c:otherwise>
						        <c:out value="ATM"/>
						    </c:otherwise>
                       	</c:choose>
                          
                          </td>
                          <td>
                          	  <c:choose>
	                        <c:when test="${order.status == NULL}"> 
	                        	<c:out value="Pay"/>
	                       	</c:when>
	                       	<c:otherwise>
						        <c:out value="Not"/>
						    </c:otherwise>
                       	</c:choose>
                          </td>
                           <td>${order.created}</td>
                           
        				
        				 <td>
                         <button class="btn btn-danger"><a href="${pageContext.request.contextPath}/admin/order/delete?id=${order.id}">Remove</a></button>
                         
                          <button class="btn btn-success"><a href="${pageContext.request.contextPath}/admin/order/edit?id=${order.id}">Edit</a></button>
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
 
    <jsp:include page = "./footer/footer.jsp" flush = "true" />