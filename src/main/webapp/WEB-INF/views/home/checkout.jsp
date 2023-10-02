<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<!-- Shopping Cart Section Begin -->
<section class="checkout-section spad">
	<div class="container">
		<form action="order-detail" method="post" class="checkout-form">
			<div class="row">
				<div class="col-lg-6 offset-lg-3">
					<h4>Thông tin của bạn</h4>
					<div class="row">
						<div class="col">
							<label for="fir"><span>Địa Chỉ</span></label> <input type="text"
								id="fir" name="address">
						</div>
					</div>
					<div class="place-order">
						<h4>Đơn hàng của bạn</h4>
						<div class="order-total">
							<ul class="order-table">
								<li>Sản Phẩm <span>Tổng cộng: </span></li>
								<c:forEach var="item" items="${cart.items}">
									<li class="fw-normal">${item.name }x${item.qty } <span>$${item.price
											* item.qty}</span></li>
								</c:forEach>
								<li class="total-price">Tổng cộng:  <span>$${cart.total }</span></li>
							</ul>

							<div class="order-btn">
								<button type="submit" class="site-btn place-btn">Địa chỉ đặt hàng</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</section>
<!-- Shopping Cart Section End -->