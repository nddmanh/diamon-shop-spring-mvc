<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<head>
<meta charset="UTF-8">
<title>Thanh toan</title>
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
						<li><a href='<c:url value="/san-pham/${ item.id }"/>'><span
								class="icon-circle-blank"></span>${ item.name }</a></li>
					</c:forEach>

					<li style="border: 0">&nbsp;</li>
					<li><a class="totalInCart" href="cart.html"><strong>Total
								Amount <span class="badge badge-warning pull-right"
								style="line-height: 18px;"><fmt:formatNumber
										type="number" groupingUsed="true" value="${ TotalPriceCart }" />
									₫</span>
						</strong></a></li>

				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br> <br> <a
						class="defaultBtn" href="#">Click here </a>
				</p>
			</div>


		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Thanh toán</li>
			</ul>
			<h3>Thanh toán</h3>
			<hr class="soft" />

			<div class="row">
				<div class="span8">
					<div class="well">
						<h3>Thanh toán đơn hàng</h3>
						<form:form action="checkout" method="POST" modelAttribute="bills" class="form-horizontal" >
							<div class="control-group">
								<label class="control-label">Họ tên <sup>*</sup></label>
								<div class="controls">
									<form:input type="text" class="span3" placeholder="Nhập họ tên" path="display_name" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Email <sup>*</sup></label>
								<div class="controls">
									<form:input type="email" class="span3" placeholder="Email" path="user" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Liên hệ <sup>*</sup></label>
								<div class="controls">
									<form:input type="text" class="span3" placeholder="Nhập số điện thoại" path="phone" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Địa chỉ <sup>*</sup></label>
								<div class="controls">
									<form:textarea rows="5" cols="30" path="address" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Ghi chú <sup>*</sup></label>
								<div class="controls">
									<form:textarea rows="5" cols="30" path="note" />
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<input type="submit" name="submitAccount" value="Đặt hàng"
										class="shopBtn exclusive">
								</div>
							</div>
						</form:form>
					</div>
				</div>
				<div class="span1">&nbsp;</div>

			</div>

		</div>
	</div>
</body>