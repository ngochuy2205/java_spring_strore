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
					Doanh thu
				</h3>
				<table class="table text-center">
					<thead>
						<tr>
							<th style="font-weight: bolder; font-size: 18px">No.</th>
							<th style="font-weight: bolder; font-size: 18px">Tên danh mục</th>
							<th style="font-weight: bolder; font-size: 18px">Doanh Thu</th>
							<th style="font-weight: bolder; font-size: 18px">Số Lượng Danh Mục</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="i" value="0"/>
						<c:forEach var="item" items="${items}">
							<tr>
								<td>${i = i + 1 }</td>
								<td>${item.category.name}</td>
								<td>${item.revenue}</td>
								<td>${item.count}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- End Container fluid  -->


	<!-- footer -->

	<footer class="footer text-center"> &copy; PS21313 - Nguyễn Ngọc Huy </footer>

	<!-- End footer -->

</div>