<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- Page wrapper  -->
<div class="page-wrapper py-2">
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Sales Cards  -->
		<div class="row">
			<div class="col-6 offset-3">
				<form:form name="qryform" id="qryform" action="/admin/account"
					class="px-3" modelAttribute="item" enctype="multipart/form-data">
					<div class="card">
						<div class="card-header">
							<h3 class="alert alert-info">
								Quản Lý Tài Khoản <a href="/admin/account"
									class="btn btn-success float-right">Danh Sách Tài Khoản</a>
							</h3>
							<div class="bg-success text-light px-3">${message }</div>
						</div>
						<div class="card-body">
							<div class="form-group row">
								<div class="col-6">
									<div class="form-group">
										<form:input type="text" class="form-control" id="username"
											path="username" aria-describedby="usHid"
											placeholder="Username" />
										<small id="usHid" class="form-text text-muted">Username
											ID is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="password" class="form-control" id="password"
											path="password" aria-describedby="passHid"
											placeholder="Password" />
										<small id="passHid" class="form-text text-muted">Password
											is invalid</small>
									</div>
									<div class="form-group">
										<input type="file" class="form-control" id="photo"
											name="file" aria-describedby="photoHid" placeholder="photo" />
										<small id="photoHid" class="form-text text-muted">photo
											is invalid</small>
									</div>
									<div class="form-group">
										Activity:
										<form:radiobuttons class="mx-2" path="activated"
											items="${activateds }" delimiter="" />
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<form:input type="text" class="form-control" id="fullname"
											path="fullname" aria-describedby="fullnameHid"
											placeholder="fullname" />
										<small id="fullnameHid" class="form-text text-muted">Fullname
											is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="email" class="form-control" id="email"
											path="email" aria-describedby="emailHid" placeholder="email" />
										<small id="emailHid" class="form-text text-muted">Email
											is invalid</small>
									</div>
									<div class="form-group">
										Role:
										<form:radiobuttons class="mx-2" path="admin"
											items="${admins }" delimiter="" />
									</div>
								</div>
							</div>
						</div>
						<div class="card-footer text-muted">
							<button type="submit" class="btn btn-primary "
								formaction="/admin/account/create">Thêm</button>
							<button type="submit" class="btn btn-warning"
								formaction="/admin/account/update/${item.username}">Sửa</button>
							<button type="submit" class="btn btn-danger"
								formaction="/admin/account/delete/${item.username}">Xóa</button>
							<button type="submit" class="btn btn-success"
								formaction="/admin/accountControl">Làm Mới</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<!-- 
		Search
		<div class="row">
			<form >
				<div class="form-inline float-left">
					<label for="name">Name: &nbsp;</label> <input type="text"
						class="form-control" name="name" id="name"
						aria-describedby="naemHid" placeholder="">
					<button class="btn btn-outline-primary ml-2">Search</button>
				</div>
			</form>
		</div> -->


		<!-- footer -->

		<footer class="footer text-center"> &copy; PS21313 - Nguyễn Ngọc Huy </footer>

		<!-- End footer -->

	</div>
</div>
<!-- End Page wrapper  -->


