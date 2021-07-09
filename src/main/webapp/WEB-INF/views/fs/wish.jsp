<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/accordions.css">
<%@ include file="../layout/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

		<br><br>
	<!-- ################ accordion toggle 적용 START ################ -->
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1>WISH LIST</h1><hr>
				</div>
				
				<div class="col-md-12">
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

						<c:set var="count" value="0"/>
						<c:forEach var="list" items="${wlist}">
						<c:set var="count" value="${count = count + 1}"/>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="heading${count}">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse${count}" aria-expanded="true" aria-controls="collapse${count}">
											<fmt:parseDate value="${list.depPlandTime}" var="depTime" pattern="yyyyMMddHHmm" />
											<fmt:parseDate value="${list.arrPlandTime}" var="arrTime" pattern="yyyyMMddHHmm" />
											(${count}) ${list.airlineNm} -  ${list.depAirportNm} (<fmt:formatDate value="${depTime}" pattern="yyyy년MM월dd일 HH시mm분" />) -> ${list.arrAirportNm} (<fmt:formatDate value="${arrTime}" pattern="yyyy년MM월dd일 HH시mm분" />)
										</a>
										<button name=deleteBtn style="float: right; margin-top: 0px;">삭제</button>
									</h4>
								</div>
								<div id="collapse${count}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading${count}">
									<div class="panel-body">
										<form method="post" action="/kakaoPay" id="searchFrm">
											<p>This is 간단한 내용. write here. (${count})</p>
											<div style="float: right; margin-bottom: 30px;">
												<button name="payBtn" style="border: 0px; background-color: rgba(0,0,0,0);">
											    	<img src="${pageContext.request.contextPath}/resources/images/payment_icon_yellow_small.png">
											    </button>
											</div>
											<table class="table table-striped"> 
												<thead> 
													<tr> 
														<th>항공편</th>
														<th>항공사</th>
														<th>출발공항</th>
														<th>출발시간</th>
														<th>도착공항</th>
														<th>도착시간</th>
														<th>일반석</th>
														<th>비즈니스석</th>
													</tr> 
												</thead> 
												<tbody> 
													<tr>
														<td>${list.vihicleId}</td> 
														<td>${list.airlineNm}</td> 
														<td>${list.depAirportNm}</td>
														<td><fmt:formatDate value="${depTime}" pattern="MM월dd일 HH시mm분" /> </td>
														<td>${list.arrAirportNm}</td>
														<td><fmt:formatDate value="${arrTime}" pattern="MM월dd일 HH시mm분" /> </td>
														<td><fmt:formatNumber value="${list.economyCharge}" pattern="#,###,###" /></td>
														<td><fmt:formatNumber value="${list.prestigeCharge}" pattern="#,###,###" /></td>
													</tr>
												</tbody> 
											</table>
											<input type="hidden" value="${user.id}" name="id" id="id"/>
											<input type="hidden" value="${list.vihicleId}" name="vihicleId" id="vihicleId"/>
											<input type="hidden" value="${list.airlineNm}" name="airlineNm" id="airlineNm"/>
											<input type="hidden" value="${list.depAirportNm}" name="depAirportNm" id="depAirportNm"/>
											<input type="hidden" value="${list.depPlandTime}" name="depPlandTime" id="depPlandTime"/>
											<input type="hidden" value="${list.arrAirportNm}" name="arrAirportNm" id="arrAirportNm"/>
											<input type="hidden" value="${list.arrPlandTime}" name="arrPlandTime" id="arrPlandTime"/>
											<input type="hidden" value="${list.economyCharge}" name="economyCharge" id="economyCharge"/>
											<input type="hidden" value="${list.prestigeCharge}" name="prestigeCharge" id="prestigeCharge"/>
										</form>
									</div>
								</div>
							</div>
							
						</c:forEach>
						
					</div>
				</div>
			</div>
		</div><br>
	<!-- ################ accordion toggle 적용 END ################ -->


		<div id="fh5co-tours" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>행복한 여행을 응원합니다.</h3>
						<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
					</div>
				</div>
				
				
			</div>
		</div>
		
		<div id="fh5co-features">
			<div class="container">
				<div class="row">
					<div class="col-md-4 animate-box">

						<div class="feature-left">
							<span class="icon">
								<i class="icon-hotairballoon"></i>
							</span>
							<div class="feature-copy">
								<h3>Family Travel</h3>
								<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
								<p><a href="#">Learn More</a></p>
							</div>
						</div>

					</div>

					<div class="col-md-4 animate-box">
						<div class="feature-left">
							<span class="icon">
								<i class="icon-search"></i>
							</span>
							<div class="feature-copy">
								<h3>Travel Plans</h3>
								<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
								<p><a href="#">Learn More</a></p>
							</div>
						</div>
					</div>
					<div class="col-md-4 animate-box">
						<div class="feature-left">
							<span class="icon">
								<i class="icon-wallet"></i>
							</span>
							<div class="feature-copy">
								<h3>Honeymoon</h3>
								<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
								<p><a href="#">Learn More</a></p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 animate-box">

						<div class="feature-left">
							<span class="icon">
								<i class="icon-wine"></i>
							</span>
							<div class="feature-copy">
								<h3>Business Travel</h3>
								<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
								<p><a href="#">Learn More</a></p>
							</div>
						</div>

					</div>

					<div class="col-md-4 animate-box">
						<div class="feature-left">
							<span class="icon">
								<i class="icon-genius"></i>
							</span>
							<div class="feature-copy">
								<h3>Solo Travel</h3>
								<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
								<p><a href="#">Learn More</a></p>
							</div>
						</div>

					</div>
					<div class="col-md-4 animate-box">
						<div class="feature-left">
							<span class="icon">
								<i class="icon-chat"></i>
							</span>
							<div class="feature-copy">
								<h3>Explorer</h3>
								<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
								<p><a href="#">Learn More</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<script type="text/javascript">
			$(document).ready(function(e){
				$('#payBtn').click(function(){
					if($.trim($('#id').val()) === "") {
						alert("로그인이 필요한 서비스입니다.");
						location.href="/auth/loginForm";
					}
					else {
						$('#searchFrm').submit();
					}
				});
			});
		</script>
		

<%@ include file="../layout/footer.jsp"%>

