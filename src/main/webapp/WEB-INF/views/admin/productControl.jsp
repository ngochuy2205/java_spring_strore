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
				<form:form name="qryform" id="qryform" action="/admin/product " method="POST" enctype="multipart/form-data"
					class="px-3" modelAttribute="item">
					<div class="card">
						<div class="card-header">
							<h3 class="alert alert-info">
								Quản lý sản Phẩm <a href="/admin/product"
									class="btn btn-success float-right">Danh sách Sản Phẩm</a>
							</h3>
							<div class="bg-success text-light px-3">${message }</div>
						</div>
						<div class="card-body">
							<div class="col row">
								<div class="col-6">
									<div class="form-group">
										<form:input type="text" class="form-control" id="id" path="id"
											disabled="true" aria-describedby="usHid"
											placeholder="Mã" />
										<small id="usHid" class="form-text text-muted">Product
											ID is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="name" class="form-control" id="name"
											path="name" aria-describedby="nameHid"
											placeholder="Tên" />
										<small id="nameHid" class="form-text text-muted">Product
											Name is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="number" class="form-control" id="price"
											path="price" aria-describedby="priceHid" placeholder="Giá" />
										<small id="priceHid" class="form-text text-muted">Price
											is invalid</small>
									</div>
									<div class="form-group">
										<input type="file" class="form-control" id="file"
											name="file" aria-describedby="imageHid" placeholder="Hình ảnh" />
										<small id="imageHid" class="form-text text-muted">Image
											is invalid</small>
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<form:input type="date" class="form-control" id="createDate"
											disabled="true" path="createDate"
											aria-describedby="createDateHid" placeholder="ngày tạo" />
										<small id="createDateHid" class="form-text text-muted">Create
											Date is invalid</small>
									</div>
									<div class="form-group ">
										Category:
										<form:select path="category" cssClass="form-control">
											<form:options items="${categories }" itemLabel="name" />
										</form:select>
									</div>
									<div class="form-group ">
										Available: <br />
										<form:radiobuttons class="mx-3 " path="available"
											items="${availables }" delimiter="" />
									</div>
								</div>
							</div>
						</div>
						<div class="card-footer text-muted">
							<button type="submit" class="btn btn-primary "
								formaction="/admin/product/create">Thêm</button>
							<button type="submit" class="btn btn-warning"
								formaction="/admin/product/update/${item.id}">Cập Nhật</button>
							<button type="submit" class="btn btn-danger"
								formaction="/admin/product/delete/${item.id}">Xóa</button>
							<button type="submit" class="btn btn-success"
								formaction="/admin/productControl">Làm Mới</button>
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


