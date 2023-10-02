<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	<!-- Breadcrumb Section Begin -->
	<div class="breacrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text product-more">
						<a href="./home.html"><i class="fa fa-home"></i> Home</a> <a
							href="./shop.html">Shop</a> <span>Chi Tiết</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section Begin -->

	<!-- Product Shop Section Begin -->
	<section class="product-shop spad page-details">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="filter-widget">
						<h4 class="fw-title">Danh Mục</h4>
						<ul class="filter-catagories">
							<li><a href="/home/brand?category=1">Loadfer</a></li>
							<li><a href="/home/brand?category=2">Oxford</a></li>
							<li><a href="/home/brand?category=3">Cặp xách & Balo</a></li>
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
						<h4 class="fw-title">Color</h4>
						<div class="fw-color-choose">
							<div class="cs-item">
								<input type="radio" id="cs-black"> <label
									class="cs-black" for="cs-black">Đen</label>
							</div>
							<div class="cs-item">
								<input type="radio" id="cs-violet"> <label
									class="cs-violet" for="cs-violet">Tím</label>
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
									class="cs-green" for="cs-green">Xanh Lá</label>
							</div>
						</div>
					</div>

				</div>


				<div class="col-lg-9">
					<div class="row">
						<div class="offset-lg-1 col-lg-5">
							<div >
								<img class="product-big-img img-fluid"
									src="/images/${pr.image}" alt="">
							</div>
						</div>


						<div class="col-lg-6">
							<div class="product-details">
								<div class="pd-title">
									<h3>${pr.name}</h3>
								</div>
								<div class="pd-rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i>
								</div>
								<div class="pd-desc">
									<h4>
										Price: $${pr.price}
									</h4>
								</div>
								<div class="pd-color">
									<h6>Color</h6>
									<div class="pd-color-choose">
										<div class="cc-item">
											<input type="radio" id="cc-black"> <label
												for="cc-black"></label>
										</div>
										<div class="cc-item">
											<input type="radio" id="cc-yellow"> <label
												for="cc-yellow" class="cc-yellow"></label>
										</div>
										<div class="cc-item">
											<input type="radio" id="cc-violet"> <label
												for="cc-violet" class="cc-violet"></label>
										</div>
									</div>
								</div>
								<div class="pd-size-choose">
									<div class="sc-item">
										<input type="radio" id="sm-size"> <label for="sm-size">s</label>
									</div>
									<div class="sc-item">
										<input type="radio" id="md-size"> <label for="md-size">m</label>
									</div>
									<div class="sc-item">
										<input type="radio" id="lg-size"> <label for="lg-size">l</label>
									</div>
									<div class="sc-item">
										<input type="radio" id="xl-size"> <label for="xl-size">xs</label>
									</div>
								</div>
								<div class="quantity">
									<a href="/home/cart/add/${pr.id }" class="primary-btn pd-cart">Thêm Vào Giỏ Hàng</a>
								</div>

								<div class="pd-share">
									<div class="p-code">SKU: ${pr.id}</div>
									<div class="pd-social">
										<a href="#"><i class="ti-facebook"></i></a> <a href="#"><i
											class="ti-twitter-alt"></i></a> <a href="#"><i
											class="ti-linkedin"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Shop Section End -->

<!-- Related Products Section End -->
    <div class="related-products spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Sảm phẩm tương tự</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="product-slider owl-carousel">
	                    <c:forEach var="item" items="${WMitems}">
	                        <div class="product-item">
	                            <div class="pi-pic">
	                                <img src="/images/${item.image}" alt="">
	                                <div class="sale">Sale</div>
	                                <ul>
	                                    <li class="w-icon active"><a href="/home/cart/add/${item.id}"><i class="icon_cart_alt"></i></a></li>
	                                    <li class="quick-view"><a href="product/detail/${item.id}">+ Xem Thêm</a></li>
	                                </ul>
	                            </div>
	                            <div class="pi-text">
	                                <a href="#">
	                                    <h5>${item.name}</h5>
	                                </a>
	                                <div class="product-price">
	                                    ${item.price}$
	                                </div>
	                            </div>
	                        </div>
	                    </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Related Products Section End -->


	