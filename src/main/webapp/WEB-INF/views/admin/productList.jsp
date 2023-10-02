<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Page wrapper  -->
<div class="page-wrapper py-2">
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Sales Cards  -->
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h3 class="alert alert-info">
					Danh sách Sản Phẩm <a href="productControl" class="btn btn-success float-right">Thêm Sản Phẩm</a>
				</h3>
				<table class="table text-center">
					<thead>
						<tr>
							<th style="font-weight: bolder; font-size: 18px">Mã</th>
							<th style="font-weight: bolder; font-size: 18px">Tên sản phẩm</th>
							<th style="font-weight: bolder; font-size: 18px">Hình ảnh</th>
							<th style="font-weight: bolder; font-size: 18px">Giá</th>
							<th style="font-weight: bolder; font-size: 18px">Ngày Tạo</th>
							<th style="font-weight: bolder; font-size: 18px">Trạng Thái</th>
							<th style="font-weight: bolder; font-size: 18px">Danh Mục</th>
							<th style="font-weight: bolder; font-size: 18px">Hoạt động</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${page.content}">
							<tr>
								<td>${item.id}</td>
								<td>${item.name}</td>
								<td><img src="/images/${item.image}" alt=""
									width=50% /></td>
								<td>${item.price}</td>
								<td>${item.createDate}</td>
								<td>${item.available}</td>
								<td>${item.category.name}</td>
								<td>
									<a class='btn btn-warning btn-xs'
									style="font-size: 14px"
									href="product/edit/${item.id}"> <span
										class="glyphicon glyphicon-edit"></span> Sửa
									</a> 
									<a href="product/delete/${item.id}"
									style="font-size: 14px" class="btn btn-danger btn-xs"> <span
										class="glyphicon glyphicon-remove"></span> Xóa
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr />
				<div class="text-center">
					<a href="/admin/product?p=0" class="btn btn-primary">First</a> <a
						href="/admin/product?p=${page.number-1}" class="btn btn-primary">Previous</a>
					<a href="/admin/product?p=${page.number+1}" class="btn btn-primary">Next</a>
					<a href="/admin/product?p=${page.totalPages-1}"
						class="btn btn-primary">Last</a>
				</div>
				<hr />
			</div>
		</div>
	</div>
	<!-- End Container fluid  -->


	<!-- footer -->

	<footer class="footer text-center"> &copy; PS21313 - Nguyễn Ngọc Huy </footer>

	<!-- End footer -->

</div>