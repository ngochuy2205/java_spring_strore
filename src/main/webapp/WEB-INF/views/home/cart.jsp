<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb-text product-more">
					<a href="./home.html"><i class="fa fa-home"></i> Trang Chủ</a> <a
						href="./shop.html">Cửa Hàng</a> <span>Giỏ Hàng</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb Section Begin -->

<!-- Shopping Cart Section Begin -->
<section class="shopping-cart spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="cart-table">
					<table>
						<thead>
							<tr>
								<th>Hình Ảnh</th>
								<th class="p-name">Tên Sản Phẩm</th>
								<th>Giá</th>
								<th>Số Lượng</th>
								<th>Tổng Cộng</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${cart.items}">
								<form action="/home/cart/update" method="post">
									<input type="hidden" name="id" value="${item.id}">
									<tr>
										<td class="cart-pic first-row"><img
											src="/images/${item.image }" alt="" width=50%></td>
										<td class="cart-title first-row">
											<h5>${item.name }</h5>
										</td>
										<td class="p-price first-row">${item.price }</td>
										<td>
											<div class="pt-4">
												<a	class='btn btn-warning text-light btn-xs' style="width: 38px;" href="/home/cart/sub/${item.id}"> - </a>
												<input name="qty" value="${item.qty}" min="0" onblur="this.form.submit()" class="text-center text-warning" style="width: 50px; height: 30px; font-size:18px; font-weight: bolder; border: none"> 
												<a class='btn btn-warning btn-xs text-light' style="width: 38px;" href="/home/cart/add/${item.id}">+</a> 
											</div>
										</td>
										<td class="total-price first-row">${item.price * item.qty}</td>
										<td class="close-td first-row"><a
											class='btn btn-xs text-danger' style="font-weight: bolder"
											href="/home/cart/remove/${item.id}"><span
												class="glyphicon glyphicon-trash"></span> Xóa</a></td>
									</tr>
								</form>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="row">
					<div class="col-lg-4">
						<div class="cart-buttons">
							<a href="shop" class="primary-btn continue-shop">Tiếp tục Mua</a>
							<a href="/home/cart/clear" class="primary-btn up-cart">Xóa</a>
						</div>
					</div>
					<div class="col-lg-4 offset-lg-4">
						<div class="proceed-checkout">
							<ul>
								<li class="cart-total">Tổng: <span>${cart.total }</span></li>
							</ul>
							<c:if test="${!isLogin}">
								<a href="/home/login" class="proceed-btn">Tiến Hành Kiểm Tra</a>
							</c:if>
							<c:if test="${isLogin}">
								<a href="/home/checkout" class="proceed-btn">Tiến Hành Kiểm Tra</a>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Shopping Cart Section End -->