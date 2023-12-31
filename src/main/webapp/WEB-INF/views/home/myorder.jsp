<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb-text product-more">
					<a href="/home/index"><i class="fa fa-home"></i> Trang Chủ</a> <a
						href="/home/shop">Cửa Hàng</a> <span>Giỏ Hàng</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb Section Begin -->

<!-- Shopping Cart Section Begin -->
<section class="shopping-cart spad">
	<div class="container">
		<div class="col">
			<div class="alert alert-primary" role="alert">
				<h3>Cảm ơn rất nhiều cho sự lựa chọn của bạn sản phẩm của tôi!</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="cart-table">
					<table>
						<thead>
							<tr>
								<th>No.</th>
								<th>Mã Đặt Hàng</th>
								<th>Ngày Tạo</th>
								<th>Địa Chỉ</th>
								<th>Chi Tiết</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="i" value="0" />
							<c:forEach var="item" items="${items}">
								<tr>
									<td class="p-price text-dark">${i=i+1}</td>
									<td class="p-price first-row">
										<h5>${item.id }</h5>
									</td>
									<td class="p-price text-dark first-row">${item.createDate }</td>
									<td class="cart-title first-row text-dark">${item.address }</td>
									<td class="total-price first-row">
										<a href="/home/myOrderDetail?id=${item.id }"
											style="font-size: 14px">Chi tiết đặt hàng</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Shopping Cart Section End -->