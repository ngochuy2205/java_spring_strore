<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="nav-item">
			<div class="container">
				<div class="nav-depart">
					<div class="depart-btn">
						<i class="ti-menu"></i> <span>All departments</span>
						<ul class="depart-hover" th:each="category : ${categories}">
							<li class="active"><a href="/home/brand?category=2">Oxford</a></li>
							<li><a href="/home/brand?category=1">Giày Loader</a></li>
							<li><a href="/home/brand?category=3">Cặp Xách & Balo</a></li>
							<li><a href="/home/brand?category=1">Phụ Kiện Giày</a></li>
						</ul>
					</div>
				</div>
				<nav class="nav-menu mobile-menu">
					<ul>
						<li class="active"><a href="index">Trang Chủ</a></li>
						<li><a href="shop">Cửa Hàng</a></li>
						<li><a href="shop">Thư Viện</a>
                            <ul class="dropdown">
                                <li><a href="/home/brand?category=1">Loadfer</a></li>
                                <li><a href="/home/brand?category=2">Oxford</a></li>
                                <li><a href="/home/brand?category=3">Cặp Xách</a></li>
                            </ul>
                        </li>
<%--						<li><a href="blog">Blog</a></li>--%>
						<li><a href="contact">Liên Hệ</a></li>
						<li><a href="#">Profile</a>
							<ul class="dropdown">
							<c:if test="${!isLogin}">
								<li><a href="login">Đăng Nhập</a></li>
								<li><a href="register">Đăng Kí</a></li>
							</c:if>
							<c:if test="${isLogin}">
								<li><a href="change-password">Đổi Password</a></li>
								<li><a href="profile">My Profile</a></li>
							</c:if>
							</ul>
						</li>
					</ul>
				</nav>
				<div id="mobile-menu-wrap"></div>
			</div>
		</div>