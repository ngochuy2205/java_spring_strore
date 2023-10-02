<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- Slideshow -->
    <section class="hero-section">
        <div class="hero-items owl-carousel">
            <div class="single-hero-items set-bg" data-setbg="/forUser/img/hero-1.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <span>Bag,kids</span>
                            <h1>Black friday</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore</p>
                            <a href="#" class="primary-btn">Shop Now</a>
                        </div>
                    </div>
                    <div class="off-card">
                        <h2>Sale <span>50%</span></h2>
                    </div>
                </div>
            </div>
            <div class="single-hero-items set-bg" data-setbg="/forUser/img/hero-2.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <span>Bag,kids</span>
                            <h1>Black friday</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore</p>
                            <a href="#" class="primary-btn">Shop Now</a>
                        </div>
                    </div>
                    <div class="off-card">
                        <h2>Sale <span>50%</span></h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- SlideShow -->




    <!-- Category -->
    <div class="banner-section spad">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4">
                    <div class="single-banner">
                        <img src="/forUser/img/banner-1.jpg" alt="">
                        <div class="inner-text">
                            <h4>Loader</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-banner">
                        <img src="/forUser/img/banner-2.jpg" alt="">
                        <div class="inner-text">
                            <h4>OxFord</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-banner">
                        <img src="/forUser/img/banner-3.jpg" alt="">
                        <div class="inner-text">
                            <h4>Balo</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Category -->




    <!-- Women Banner Section Begin -->
<%--    <section class="women-banner spad">--%>
<%--        <div class="container-fluid">--%>
<%--            <div class="row">--%>
<%--                <div class="col-lg-3">--%>
<%--                    <div class="product-large set-bg" data-setbg="/forUser/img/products/women-large.jpg">--%>
<%--                        <h2>Loadfer</h2>--%>
<%--                        <a href="/home/brand?category=2">Khám phá nhiều hơn</a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-8 offset-lg-1">--%>
<%--                    <div class="filter-control">--%>
<%--                        <ul>--%>
<%--                            <li class="active">L</li>--%>
<%--                            <li>HandBag</li>--%>
<%--                            <li>Shoes</li>--%>
<%--                            <li>Accessories</li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                    <div class="product-slider owl-carousel">--%>
<%--                    <c:forEach var="item" items="${WMitems}">--%>
<%--                        <div class="product-item">--%>
<%--                            <div class="pi-pic">--%>
<%--                                <img src="/images/${item.image}" alt="">--%>
<%--                                <div class="sale">Sale</div>--%>
<%--                                <ul>--%>
<%--                                    <li class="w-icon active"><a href="/home/cart/add/${item.id}"><i class="icon_cart_alt"></i></a></li>--%>
<%--                                    <li class="quick-view"><a href="product/detail/${item.id}">+ Quick View</a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="pi-text">--%>
<%--                                <a href="#">--%>
<%--                                    <h5>${item.name}</h5>--%>
<%--                                </a>--%>
<%--                                <div class="product-price">--%>
<%--                                    ${item.price}$--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </c:forEach>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </section>--%>
    <!-- Women Banner Section End -->





    <!-- Man Banner Section Begin -->
<%--    <section class="man-banner spad">--%>
<%--        <div class="container-fluid">--%>
<%--            <div class="row">--%>
<%--                <div class="col-lg-8">--%>
<%--                    <div class="filter-control">--%>
<%--                        <ul>--%>
<%--                            <li class="active">Clothings</li>--%>
<%--                            <li>HandBag</li>--%>
<%--                            <li>Shoes</li>--%>
<%--                            <li>Accessories</li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                    <div class="product-slider owl-carousel">--%>
<%--                        <c:forEach var="item" items="${Mitems}">--%>
<%--                        <div class="product-item">--%>
<%--                            <div class="pi-pic">--%>
<%--                                <img src="/images/${item.image}" alt="">--%>
<%--                                <div class="sale">Sale</div>--%>
<%--                                <ul>--%>
<%--                                    <li class="w-icon active"><a href="/home/cart/add/${item.id}"><i class="icon_cart_alt"></i></a></li>--%>
<%--                                    <li class="quick-view"><a href="product/detail/${item.id}"">+ Quick View</a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="pi-text">--%>
<%--                                <a href="#">--%>
<%--                                    <h5>${item.name}</h5>--%>
<%--                                </a>--%>
<%--                                <div class="product-price">--%>
<%--                                    ${item.price}$--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </c:forEach>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-3 offset-lg-1">--%>
<%--                    <div class="product-large set-bg m-large" data-setbg="/forUser/img/products/man-large.jpg">--%>
<%--                        <h2>Men</h2>--%>
<%--                        <a href="/home/brand?category=1">Discover More</a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </section>--%>
    <!-- Man Banner Section End -->
    
     
  <!-- TOp 10 Banner Section Begin -->
    <section class="women-banner spad">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                    <div class="product-large set-bg" data-setbg="/forUser/img/products/women-large.jpg">
                        <h2>Top 10</h2>
                        <a href="#">Khám phá nhiều hơn</a>
                    </div>
                </div>
                <div class="col-lg-8 offset-lg-1">
                    <div class="filter-control">
                        <ul>
                            <li class="active">Loadfer</li>
                            <li>OxFord</li>
                            <li>Cặp xách & Balo</li>
                            <li>Phụ Kiện</li>
                        </ul>
                    </div>
                    <div class="product-slider owl-carousel">
                    <c:forEach var="item" items="${topList.content}">
                        <div class="product-item">
                            <div class="pi-pic">
                                <img src="/images/${item.product.image}" alt="">
                                <div class="sale">Sale</div>
                                <ul>
                                    <li class="w-icon active"><a href="/home/cart/add/${item.product.id}"><i class="icon_cart_alt"></i></a></li>
                                    <li class="quick-view"><a href="product/detail/${item.product.id}">+ Xem Thêm</a></li>
                                </ul>
                            </div>
                            <div class="pi-text">
                                <a href="#">
                                    <h5>${item.product.name}</h5>
                                </a>
                                <div class="product-price">
                                    ${item.product.price}$
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Top 10 Banner Section End --> 
    

    <!-- Instagram Section Begin -->
    <div class="instagram-photo">
        <div class="insta-item set-bg" data-setbg="/forUser/img/insta-1.jpg">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">Xem Thêm</a></h5>
            </div>
        </div>
        <div class="insta-item set-bg" data-setbg="/forUser/img/insta-2.jpg">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">Xem Thêm</a></h5>
            </div>
        </div>
        <div class="insta-item set-bg" data-setbg="/forUser/img/insta-3.jpg">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">Xem Thêm</a></h5>
            </div>
        </div>
        <div class="insta-item set-bg" data-setbg="/forUser/img/insta-4.jpg">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">Xem Thêm</a></h5>
            </div>
        </div>
        <div class="insta-item set-bg" data-setbg="/forUser/img/insta-5.jpg">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">Xem Thêm</a></h5>
            </div>
        </div>
        <div class="insta-item set-bg" data-setbg="/forUser/img/insta-6.jpg">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">Xem Thêm</a></h5>
            </div>
        </div>
    </div>
    <!-- Instagram Section End -->

    <!-- Latest Blog Section Begin -->
    <section class="latest-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Bài Viết</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single-latest-blog">
                        <img src="/forUser/img/latest-1.jpg" alt="">
                        <div class="latest-text">
                            <div class="tag-list">
                                <div class="tag-item">
                                    <i class="fa fa-calendar-o"></i>
                                    6/6/2023
                                </div>
                                <div class="tag-item">
                                    <i class="fa fa-comment-o"></i>
                                    5
                                </div>
                            </div>
                            <a href="#">
                                <h4>Phong Cách Giày đẹp nhất đến từ nhà thiết kế Roger</h4>
                            </a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin quam eros, malesuada</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-latest-blog">
                        <img src="/forUser/img/latest-2.jpg" alt="">
                        <div class="latest-text">
                            <div class="tag-list">
                                <div class="tag-item">
                                    <i class="fa fa-calendar-o"></i>
                                    5/6/2023
                                </div>
                                <div class="tag-item">
                                    <i class="fa fa-comment-o"></i>
                                    4
                                </div>
                            </div>
                            <a href="#">
                                <h4>Mẫu giày hot nhất mùa hè năm 2023</h4>
                            </a>
                            <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-latest-blog">
                        <img src="/forUser/img/latest-3.jpg" alt="">
                        <div class="latest-text">
                            <div class="tag-list">
                                <div class="tag-item">
                                    <i class="fa fa-calendar-o"></i>
                                    7/6/2023
                                </div>
                                <div class="tag-item">
                                    <i class="fa fa-comment-o"></i>
                                    10
                                </div>
                            </div>
                            <a href="#">
                                <h4>Có thêm đôi giày trong tủ của bạn chắn chắn sẽ là lựa chọn đúng đắng</h4>
                            </a>
                            <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="benefit-items">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="single-benefit">
                            <div class="sb-icon">
                                <img src="/forUser/img/icon-1.png" alt="">
                            </div>
                            <div class="sb-text">
                                <h6>Miễn phí vận chuyển</h6>
                                <p>Đối với tất cả các đơn hàng trên 99$</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-benefit">
                            <div class="sb-icon">
                                <img src="/forUser/img/icon-2.png" alt="">
                            </div>
                            <div class="sb-text">
                                <h6>Giao hàng đúng hạn</h6>
                                <p>Nếu tốt có vấn đề</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-benefit">
                            <div class="sb-icon">
                                <img src="/forUser/img/icon-1.png" alt="">
                            </div>
                            <div class="sb-text">
                                <h6>Thanh toán an toàn</h6>
                                <p>Thanh toán an toàn 100%</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Latest Blog Section End -->
    
 