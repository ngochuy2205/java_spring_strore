<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb-text">
					<a href="/home/index"><i class="fa fa-home"></i> Home</a> <span>Shop</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb Section Begin -->

<!-- Product Shop Section Begin -->
<section class="product-shop spad">
	<div class="container">
		<div class="row">
			<div
				class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter">
				<div class="filter-widget">
					<h4 class="fw-title">Danh Mục</h4>
					<ul class="filter-catagories">
						<li><a href="/home/brand?category=1">Giày Loadfer</a></li>
						<li><a href="/home/brand?category=2">Giày Oxford</a></li>
						<li><a href="/home/brand?category=3">Cặp Xách & Balo</a></li>
					</ul>
				</div>

				<div class="filter-widget">
					<h4 class="fw-title">Giá</h4>
					<form action="/home/price" method="post">
						<div class="filter-range-wrap">
							<div class="range-slider">
								<div class="price-input">

									<input type="text" id="minamount" name="min"> <input
										type="text" id="maxamount" name="max">
								</div>
							</div>
							<div
								class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
								data-min="0" data-max="1000">
								<div class="ui-slider-range ui-corner-all ui-widget-header"></div>
								<span tabindex="0"
									class="ui-slider-handle ui-corner-all ui-state-default"></span>
								<span tabindex="0"
									class="ui-slider-handle ui-corner-all ui-state-default"></span>
							</div>
						</div>
						<button class="filter-btn" style="border: none">Lọc</button>
					</form>
				</div>

				<div class="filter-widget">
					<h4 class="fw-title">Màu Sắc</h4>
					<div class="fw-color-choose">
						<div class="cs-item">
							<input type="radio" id="cs-black"> <label
								class="cs-black" for="cs-black">Đen</label>
						</div>
						<div class="cs-item">
							<input type="radio" id="cs-violet"> <label
								class="cs-violet" for="cs-violet">Nâu</label>
						</div>
						<div class="cs-item">
							<input type="radio" id="cs-blue"> <label class="cs-blue"
								for="cs-blue">Xanh</label>
						</div>
						<div class="cs-item">
							<input type="radio" id="cs-yellow"> <label
								class="cs-yellow" for="cs-yellow">Vàng</label>
						</div>
						<div class="cs-item">
							<input type="radio" id="cs-red"> <label class="cs-red"
								for="cs-red">Đỏ</label>
						</div>
						<div class="cs-item">
							<input type="radio" id="cs-green"> <label
								class="cs-green" for="cs-green">Xám</label>
						</div>
					</div>
				</div>

			</div>
			<div class="col-lg-9 order-1 order-lg-2">
				<div class="product-show-option">
					<div class="row">
						<div class="col-lg-7 col-md-7">
							
						</div>
						<div class="col-lg-5 col-md-5 text-right">
							<p>Hiển Thị ${page.number*9 + 1 } - ${page.number*9 + page.numberOfElements } Of ${page.totalElements } Sản Phẩm</p>
						</div>
					</div>
				</div>

				<div class="product-list">
					<div class="row">
						<c:forEach var="item" items="${page.content}">
							<div class="col-lg-4 col-sm-6">
								<div class="product-item">
									<div class="pi-pic">
										<img src="/images/${item.image}" alt="">
										<div class="sale pp-sale">Sale</div>
										<ul>
											<li class="w-icon active"><a
												href="/home/cart/add/${item.id }"><i
													class="icon_cart_alt"></i></a></li>
											<li class="quick-view"><a href="product/detail/${item.id}">+ Xem Thêm</a></li>
											
										</ul>
									</div>
									<div class="pi-text">
										<div class="catagory-name"></div>
										<a href="#">
											<h5>${item.name}</h5>
										</a>
										<div class="product-price">$${item.price}</div>
									</div>
								</div>

							</div>
						</c:forEach>
					</div>
				</div>
				<hr />
				<div class="text-center">
					<a href="/home/search?p=0" class="btn btn-primary">First</a> <a
						href="/home/search?p=${page.number-1}" class="btn btn-primary">Previous</a>
					<a href="/home/search?p=${page.number+1}" class="btn btn-primary">Next</a>
					<a href="/home/search?p=${page.totalPages-1}" class="btn btn-primary">Last</a>
				</div>
				<hr />
			</div>
		</div>
	</div>
</section>
<!-- Product Shop Section End -->
