<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>

<head>
<meta charset="UTF-8">
<title>Dang ky</title>
</head>
<body>
	<!-- 
Body Section 
-->
	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">
				
					<c:forEach var="item" items="${ categories }" varStatus="index">
			            <li>
							<a href='<c:url value="/san-pham/${ item.id }"/>'><span class="icon-circle-blank"></span>${ item.name }</a>
						</li>
			        </c:forEach>
					
					<li style="border: 0">&nbsp;</li>
					<li><a class="totalInCart" href="cart.html"><strong>Total
								Amount <span class="badge badge-warning pull-right"
								style="line-height: 18px;"><fmt:formatNumber type="number" groupingUsed="true" value="${ TotalPriceCart }"/> ₫</span>
						</strong></a>
					</li>
					
				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br>
					<br>
					<a class="defaultBtn" href="#">Click here </a>
				</p>
			</div>
		

		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Người dùng</li>
			</ul>
			<h3>Người dùng</h3>
			<hr class="soft" />

			<div class="row">
				<div class="span4">
					<div class="well">
						<h5>Đăng ký tài khoản</h5>
						<br />
						
						<c:if test="${ statusRegister }">
							<h3>${ statusRegister }</h3>
						</c:if>
						
						<form:form action="dang-ky" method="POST" modelAttribute="user">  
							<div class="control-group">
								<label class="control-label" for="inputEmail"> Nhập địa chỉ email </label>
								<div class="controls">
									<form:input type="email" class="span3" placeholder="Email" path="user" />
								</div>
								
								<label class="control-label" for="inputPassword">Nhập mật khẩu</label>
								<div class="controls">
									<form:input type="password" class="span3" placeholder="Password" path="password" />
								</div>
								
								<label class="control-label" for="inputName"> Nhập họ tên </label>
								<div class="controls">
									<form:input type="text" class="span3" placeholder="Name" path="display_name" />
								</div>
								
								<label class="control-label" for="inputAddress"> Nhập địa chỉ</label>
								<div class="controls">
									<form:input type="text" class="span3" placeholder="Address" path="address" />
								</div>
							</div>
							<div class="controls">
								<button type="submit" class="btn block">Tạo tài khoản</button>
							</div>
						</form:form>
					</div>
				</div>
				<div class="span1">&nbsp;</div>
				<div class="span4">
					<div class="well">
						<h5>Đăng nhập</h5>
						
						<c:if test="${ statusLogin }">
							<h3>${ statusLogin }</h3>
						</c:if>
						
						<br />
						<form:form action="dang-nhap" method="POST" modelAttribute="user">  
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
									<form:input type="email" class="span3" placeholder="Email" path="user" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Password</label>
								<div class="controls">
									<form:input type="password" class="span3" placeholder="Password" path="password" />
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<button type="submit" class="defaultBtn">Đăng Nhập</button>
									<a href="#">Quên mật khẩu?</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>