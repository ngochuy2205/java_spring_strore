<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
		<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>



			<!-- Shopping Cart Section Begin -->
			<section class="checkout-section spad">
				<div class="container">
					<div class="row">
						<div class="col-lg-10">
							<div class="alert alert-success col row mx-1" role="alert">
								Đặt Hàng Thành Công
							</div>
							<div class="mx-1 mb-2">
								<h5><strong>Mã Đơn:</strong> ${order.id }</h5>
								<h5><strong>Họ và tên:</strong> ${order.account.fullname }</h5>
								<h5><strong>Địa Chỉ:</strong> ${order.address }</h5>
								<h5><strong>Email:</strong> ${order.account.email }</h5>
								<h5><strong>Ngày Tạo:</strong> ${order.createDate }</h5>
							</div>
							<div class="cart-table">
								<table>
									<thead>
										<tr>
											<th>No.</th>
											<th class="p-name">Tên Sn phẩm</th>
											<th>Giá</th>
											<th>Số Lượng</th>
											<th>Tổng</th>
										</tr>
									</thead>
									<tbody>
										<c:set var="i" value="0" />
										<c:forEach var="item" items="${items}">
											<input type="hidden" name="id" value="${item.id}">
											<tr>
												<td>${i=i+1}</td>
												<td class="cart-pic first-row">
													<img src="/images/${item.product.image}" alt="" width=50%>
												</td>
												<td class="cart-title first-row">
													<h5>${item.product.name }</h5>
												</td>
												<td class="p-price first-row">$${item.price }</td>
												<td class="p-price first-row">${item.quantity }</td>
												<td class="total-price first-row">$${item.price*item.quantity}</td>

											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="row">
								<div class="col-lg-4">
									<div class="cart-buttons">
										<a href="shop" class="primary-btn continue-shop">Tiếp Tục Mua</a>
									</div>
								</div>
								<c:set var="total" value="${0}" />
								<c:forEach var="item" items="${items }">
									<c:set var="total" value="${total+(item.price*item.quantity) }" />
								</c:forEach>
								<div class="col-lg-4 offset-lg-4">
									<div class="proceed-checkout">
										<ul>
											<li class="cart-total">Tổng: &nbsp &nbsp $${total } <span></span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- Shopping Cart Section End -->