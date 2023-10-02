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
				<div class="col row">
					<div class="col-3  alert alert-info">
						<h3 class="text-center">Đặt Hàng</h3>
						<h5>Mã: ${ord.id }</h5>
						<h5>Ngày Tạo: ${ord.createDate }</h5>
					</div>
					<div class="col-3 offset-6 alert alert-primary">
						<h3 class="text-center">Khách Hàng</h3>
						<h5>Mã: ${ord.account.username }</h5>
						<h5>Họ và Tên: ${ord.account.fullname }</h5>
						<h5>Địa Chỉ: ${ord.address }</h5>
						<h5>Email: ${ord.account.email }</h5>
					</div>
				</div>

				<table class="table text-center">
					<thead>
						<tr>
							<th style="font-weight: bolder; font-size: 18px">Chi tiết đơn hàng</th>
							<th style="font-weight: bolder; font-size: 18px">Hình ảnh sản phẩm</th>
							<th style="font-weight: bolder; font-size: 18px">Mã sản phẩm</th>
							<th style="font-weight: bolder; font-size: 18px">Giá</th>
							<th style="font-weight: bolder; font-size: 18px">Số Lượng</th>
							<th style="font-weight: bolder; font-size: 18px">Mã Đơn</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${page.content}">
							<tr>
								<td>${item.id}</td>
								<td><img src="/images/${item.product.image}"
									alt="" width=50% /></td>
								<td>${item.product.id}</td>
								<td>${item.product.name}</td>
								<td>$${item.product.price}</td>
								<td>${item.quantity }</td>
								<td>${item.order.id}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<%-- <hr />
				<div class="text-center">
					<a href="/admin/orderDetail?p=0" class="btn btn-primary">First</a>
					<a href="/admin/orderDetail?p=${page.number-1}"
						class="btn btn-primary">Previous</a> <a
						href="/admin/orderDetail?p=${page.number+1}"
						class="btn btn-primary">Next</a> <a
						href="/admin/orderDetail?p=${page.totalPages-1}"
						class="btn btn-primary">Last</a>
				</div>
				<hr /> --%>
			</div>
		</div>
	</div>
	<!-- End Container fluid  -->


	<!-- footer -->

	<footer class="footer text-center"> &copy; PS21313 - Nguyễn Ngọc Huy </footer>

	<!-- End footer -->

</div>