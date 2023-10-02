<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Page wrapper  -->
<div class="page-wrapper py-2">
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Sales Cards  -->
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h3 class="alert alert-info">
					Khách hàng hàng đầu
				</h3>
				<table class="table text-center">
					<thead>
						<tr>
							<th style="font-weight: bolder; font-size: 18px">No.</th>
							<th style="font-weight: bolder; font-size: 18px" class ="p-0 m-0"  width="10%">Hình Ảnh</th>
							<th style="font-weight: bolder; font-size: 18px">Mã Khách Hàng</th>
							<th style="font-weight: bolder; font-size: 18px">Tên Khách Hàng</th>
							<th style="font-weight: bolder; font-size: 18px">Email</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="i" value="0"/>
						<c:forEach var="item" items="${topCustomer}">
							<tr>
								<td>${i = i + 1 }</td>
								<td  class ="px-0 m-0"  width="10%">
									<img src="/images/${item.account.photo}" alt="" width="50%">
								</td>
								<td>${item.account.username}</td>
								<td>${item.account.fullname}</td>
								<td>${item.account.email}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- End Container fluid  -->


	<!-- footer -->

	<footer class="footer text-center"> &copy; PS21313 - Nguyễn Ngọc Huy </footer>

	<!-- End footer -->

</div>