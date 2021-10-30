<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
	<style>
		.pagination {
		  display: flex;
		  justify-content: center;
		}
		
		.pagination a {
		  color: black;
		  float: left;
		  padding: 8px 16px;
		  text-decoration: none;
		  transition: background-color .3s;
		  border: 1px solid #ddd;
		}
		
		.pagination a.active {
		  background-color: #4CAF50;
		  color: white;
		  border: 1px solid #4CAF50;
		}
		
		.pagination a:hover:not(.active) {background-color: #ddd;}
	</style>
</head>
<body>
	<div class="well well-small">
		<div>
			<h3 style="display: inline-block; margin-left: 25px;">Danh sách sản phẩm</h3>
			<select class="pull-right" style="margin-top: 10px;">
				<option>A - Z</option>
				<option>Cao - Thấp</option>
			</select>
		
		</div>
		
		<div class="row-fluid">
			<ul class="thumbnails">
				<li class="span4">
					<div class="thumbnail">
						<a href="product_details.html" class="overlay"></a> <a
							class="zoomTool" href="product_details.html" title="add to cart"><span
							class="icon-search"></span> QUICK VIEW</a> <a
							href="product_details.html"><img src="assets/img/a.jpg"
							alt=""></a>
						<div class="caption cntr">
							<p>Manicure & Pedicure</p>
							<p>
								<strong> $22.00</strong>
							</p>
							<h4>
								<a class="shopBtn" href="#" title="add to cart"> Add to cart
								</a>
							</h4>
							<div class="actionList">
								<a class="pull-left" href="#">Add to Wish List </a> <a
									class="pull-left" href="#"> Add to Compare </a>
							</div>
							<br class="clr">
						</div>
					</div>
				</li>
				<li class="span4">
					<div class="thumbnail">
						<a href="product_details.html" class="overlay"></a> <a
							class="zoomTool" href="product_details.html" title="add to cart"><span
							class="icon-search"></span> QUICK VIEW</a> <a
							href="product_details.html"><img src="assets/img/b.jpg"
							alt=""></a>
						<div class="caption cntr">
							<p>Manicure & Pedicure</p>
							<p>
								<strong> $22.00</strong>
							</p>
							<h4>
								<a class="shopBtn" href="#" title="add to cart"> Add to cart
								</a>
							</h4>
							<div class="actionList">
								<a class="pull-left" href="#">Add to Wish List </a> <a
									class="pull-left" href="#"> Add to Compare </a>
							</div>
							<br class="clr">
						</div>
					</div>
				</li>
				<li class="span4">
					<div class="thumbnail">
						<a href="product_details.html" class="overlay"></a> <a
							class="zoomTool" href="product_details.html" title="add to cart"><span
							class="icon-search"></span> QUICK VIEW</a> <a
							href="product_details.html"><img src="assets/img/c.jpg"
							alt=""></a>
						<div class="caption cntr">
							<p>Manicure & Pedicure</p>
							<p>
								<strong> $22.00</strong>
							</p>
							<h4>
								<a class="shopBtn" href="#" title="add to cart"> Add to cart
								</a>
							</h4>
							<div class="actionList">
								<a class="pull-left" href="#">Add to Wish List </a> <a
									class="pull-left" href="#"> Add to Compare </a>
							</div>
							<br class="clr">
						</div>
					</div>
				</li>
			</ul>
		</div>
		
		
	</div>
	
	<div class="pagination">
	  <a href="#">&laquo;</a>
	  <a href="#">1</a>
	  <a href="#" class="active">2</a>
	  <a href="#">3</a>
	  <a href="#">4</a>
	  <a href="#">5</a>
	  <a href="#">6</a>
	  <a href="#">&raquo;</a>
	</div>
</body>