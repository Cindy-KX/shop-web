<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


		<!DOCTYPE html>
		<html>

		<head>
			<title>Edit Product</title>
			<meta charset="utf-8" />
			<link rel="stylesheet" href="css/bootstrap.css" />
		</head>

		<body>
			<div class="container-fluid">

				<jsp:include page="/admin/header.jsp"></jsp:include>

				<br><br>
				<form class="form-horizontal" action="/admin/goods_edit" method="post" enctype="multipart/form-data">
					<input type="hidden" name="id" value="${g.id }" />
					<input type="hidden" name="cover" value="${g.cover }" />
					<input type="hidden" name="image1" value="${g.image1 }" />
					<input type="hidden" name="image2" value="${g.image2 }" />
					<input type="hidden" name="pageNo" value="${param.pageNo }" />
					<input type="hidden" name="type" value="${param.type }" />
					<div class="form-group">
						<label for="input_name" class="col-sm-1 control-label">Name</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="input_name" name="name" value="${g.name }"
								required="required">
						</div>
					</div>
					<div class="form-group">
						<label for="input_name" class="col-sm-1 control-label">Price</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="input_name" name="price" value="${g.price }">
						</div>
					</div>
					<div class="form-group">
						<label for="input_name" class="col-sm-1 control-label">Introduction</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="input_name" name="intro" value="${g.intro }">
						</div>
					</div>
					<div class="form-group">
						<label for="input_name" class="col-sm-1 control-label">Stock</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="input_name" name="stock" value="${g.stock }">
						</div>
					</div>
					<div class="form-group">
						<input type="file" name="cover" id="input_file">Recommended Size: 500 * 500
					</div>
			</div>
			<div class="form-group">
				<input type="file" name="image1" id="input_file">Recommended Size: 500 * 500
			</div>
			</div>
			<div class="form-group">
				<input type="file" name="image2" id="input_file">Recommended Size: 500 * 500
			</div>
			</div>
			<div class="form-group">
				<label for="select_topic" class="col-sm-1 control-label">Category</label>
				<div class="col-sm-6">
					<select class="form-control" id="select_topic" name="typeid">

						<c:forEach items="${typeList }" var="t">
							<option <c:if test="${t.id==g.type.id }">selected="selected"</c:if> value="${t.id
								}">${t.name }</option>
						</c:forEach>

					</select>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-1 col-sm-10">
					<button type="submit" class="btn btn-success">Update</button>
				</div>
			</div>
			</form>
			</div>
		</body>

		</html>