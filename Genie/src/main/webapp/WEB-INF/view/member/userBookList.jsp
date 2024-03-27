<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" media="screen"
	href="${pageContext.request.contextPath}/css/boardMain.css">

<link rel="stylesheet" media="screen"
	href="${pageContext.request.contextPath}/css/bookList.css">

<%
String userid = (String) session.getAttribute("userid");
%>

</head>
<body>
	<div id="wrap">
		<div id="faqBody">
			<div id="faqWrap">
				<!-- Location -->



				<!-- //location -->
				<div class="conWrap p_center" id="selCSS2">

					<div class="faq_box">
						<p class="faq_title" style="margin-top: 55px;">중고 도서 정보 관리</p>
						<p class="faq_mtitle" style="margin-top: 24px;">${userid}님이
							등록하신 도서 목록입니다</p>
					</div>



					<!-- left contents -->

					<div class="side_t2">
						<!-- sub navi -->
						<div class="cate_comm">
							<ul class="cate_d1">
								<li class="cate_d1_li open"><span class="cate_d1_link ">마이페이지</span>
									<div class="cate_d2">
										<ul>
											<li class="cate_d2_link"><a href="javascript:void(0);"
												onclick="location.href='${pageContext.request.contextPath}/member/memberInfo'">마이페이지</a></li>
											<li class="cate_d2_link"><a href="javascript:void(0);"
												onclick="location.href='${pageContext.request.contextPath}/member/memberUpdateForm'">회원정보수정</a></li>
											<li class="cate_d2_link"><a href="javascript:void(0);"
												onclick="location.href='${pageContext.request.contextPath}/member/memberPassForm'">비밀번호변경</a></li>
										</ul>
									</div></li>

								<li class="cate_d1_li open"><span class="cate_d1_link ">내
										판매 상품</span>
									<div class="cate_d2">
										<ul>
											<li class="cate_d2_link"><a href="javascript:void(0);"
												onclick="location.href='${pageContext.request.contextPath}/userBook/book'">판매중인
													도서 목록</a></li>

										</ul>
									</div></li>


								<li class="cate_d1_li open"><span class="cate_d1_link ">주문</span>
									<div class="cate_d2">
										<ul>
											<li class="cate_d2_link"><a href="javascript:void(0);"
												onclick="location.href='${pageContext.request.contextPath}/order/slang'">찜목록</a></li>
											<li class="cate_d2_link"><a href="javascript:void(0);"
												onclick="location.href='${pageContext.request.contextPath}/order/shoppingBasket'">장바구니</a></li>
											<li class="cate_d2_link"><a href="javascript:void(0);"
												onclick="location.href='${pageContext.request.contextPath}/order/orderLog'">주문조회</a></li>
											<li class="cate_d2_link"><a href="javascript:void(0);"
												onclick="location.href='${pageContext.request.contextPath}/member/pointLog'">포인트내역</a></li>
										</ul>
									</div></li>

								<li class="cate_d1_li open"><span class="cate_d1_link ">문의</span>
									<div class="cate_d2">
										<ul>
											<li class="cate_d2_link"><a href="javascript:void(0);"
												onclick="location.href='${pageContext.request.contextPath}/member/list'">내
													문의</a></li>
											<li class="cate_d2_link"><a href="javascript:void(0);"
												onclick="location.href='${pageContext.request.contextPath}/member/myreview'">내가 쓴 리뷰</a></li>
										</ul>
									</div></li>


								<li class="cate_d1_li open"><span class="cate_d1_link "></span>
									<div class="cate_d2">
										<ul>
											<li class="cate_d2_link"><a href="javascript:void(0);"
												onclick="location.href='${pageContext.request.contextPath}/member/logout'">로그아웃</a></li>

											<li class="cate_d2_link"><a href="javascript:void(0);"
												onclick="location.href='${pageContext.request.contextPath}/member/memberDeleteForm'">회원탈퇴</a></li>

										</ul>
									</div></li>

							</ul>

						</div>
						<!-- //sub navi -->

					</div>
					<!-- //left contents -->


					<!-- right contents -->

					<div id="conBig" style="width: 750px">

						<!-- searchTop -->
						<div class="boxShadowBr750 t_11gr" id="">
							<div class="con">
								<div class="searchTop">
									<div class="search2">

										<script>
											function handleEnter(event) {
												if (event.keyCode === 13) { // Enter 키의 keyCode는 13
													submitForm();
													return false;
												}
												return true;
											}

											function submitForm() {
												document.FaqForm.submit();
											}

											function pagingSearch(url) {

												var type = document
														.querySelector('select[name="searchType"]').value;
												var key = document
														.querySelector('input[name="searchKeyword"]').value;

												window.location.href = url
														+ "&key=" + key
														+ "&type=" + type;
											}
										</script>
										<br>
										<form name="FaqForm"
											action="${pageContext.request.contextPath}/userBook/book?page="
											method="post">

											<p class="select">
												<select name="searchType">
													<option value=""
														${search.getSearchType() eq '' ? 'selected' : ''}>도서
														분류 선택</option>

													<option value="title"
														${search.getSearchType() eq 'title' ? 'selected' : ''}>책
														제목</option>

													<option value="author"
														${search.getSearchType() eq 'author' ? 'selected' : ''}>저자</option>

												</select>
											</p>
											<p class="searchbox">
												<input type="text" name="searchKeyword"
													value="${search.getSearchKeyword()}"
													style="margin-left: 10px; width: 500px;"
													onkeypress="return handleEnter(event)"> <a
													href="javascript:void(0);" onclick="submitForm();"><img
													src="${pageContext.request.contextPath}/image/faq/ico_search_1.png"
													class="al_middle" alt="검색"></a>
											</p>
										</form>
									</div>
								</div>
							</div>
						</div>
						<!-- //searchTop -->


						<!-- right contents -->

						<!-- 컨텐츠 영역 -->

						<div>

							<!-- 책정보 ---------------------------------------------------------------------->


							<!-- 메인 섹션 영역 -->
							<script>
								// 삭제폼 
								function deleteForm(booknum) {
									// 확인 대화 상자를 표시하여 사용자에게 삭제 여부를 물음
									var result = confirm("삭제하시겠습니까?");
					
									// 사용자가 확인을 선택한 경우
									if (result) {
										
										// 삭제 pro로 이동 
										window.location.href = "${pageContext.request.contextPath}/userBook/bookDeletePro?booknum=" + booknum;

									} else {
										// 사용자가 취소를 선택한 경우
										alert("삭제가 취소되었습니다.");
									}
								}
							</script>


							<section id="mainSection">

								<c:forEach var="b" items="${bookList}">
									<fmt:formatNumber var="discount" value="${b.price * 0.9}"
										type="number" pattern="0" />
									<div class="view_type" id="AREA_G_2">

										<li>
											<div class="thumb_area" onmouseover="onImage(4771964);"
												onmouseout="outImage(4771964);">
												<div class="thumb_left_big">
													<!-- <a href="/front/product/detailProduct.do?prodId=4771964"> -->

													<c:set var="bookNumber" value="${bookNumber-1}" />
													<img
														src="${pageContext.request.contextPath}/image/book/${b.bookimg}"
														style="cursor: pointer;" width="118px" height="177px"
														onclick="location.href='${pageContext.request.contextPath}/book/indexmanager?booknum=${b.booknum}'">
													</a>
												</div>

											</div>
											<dl class="book_contents">
												<dt>
													<a
														href="${pageContext.request.contextPath}/book/indexmanager?booknum=${b.booknum}">
														<!-- <span class="tit_category">[도서]</span> 
												<span id="prod_name_pre" class="pro_name"></span> --> <strong>${b.title }</strong>
													</a>
													<div class="tag_area"></div>
												</dt>
												<dd class="txt_block">
													<span class="info"><span class="author first_child">
															<a href="#" onclick="javascript:changeKwd('박영란');">${b.author }</a>
															저
													</span><span class="publisher"><a href="#"
															onclick="javascript:changeKwd('창비');">${b.publisher}</a></span><span
														class="pubdate">${b.pubdate}</span></span>
												</dd>
												<dd class="txt_price">
													<p>
														<span>${b.price}</span> → <strong><em>${discount}</em>원</strong>
														(<em>10%</em>할인 + <em>5%</em>포인트)
													</p>
												</dd>
												<dd class="txt_desc">
													<div class="review_point">
														<span style="width: 0%"></span>
													</div>
												</dd>
											</dl>
											<dl class="btn_area">
											
											<!-- 품절 -->
											<c:if test="${b.inventory eq '0'}">
											<dd style="margin-bottom: 3px;">
													<span style="color: red;font-size: 15px; margin-left: 29px;">판매완료</span>
												</dd>
											</c:if>
											
											<c:if test="${b.inventory ne '0'}">
												<dd>
													<span class="btn_type white"><a
														href="${pageContext.request.contextPath}/book/indexmanager?booknum=${b.booknum}">도서
															정보</a></span>
												</dd>
											</c:if>
											</dl> <%-- <a href="${pageContext.request.contextPath}/book/bookUpdateForm?booknum=${b.booknum}">책정보수정</a> --%>
										</li>


									</div>
								</c:forEach>

								<c:if test="${bookList.isEmpty()}">
									<div class="view_type" id="AREA_G_2">
										<br>
										<li>
											<div style="font-size: 15px; text-align: center;">등록한 책
												정보가 없습니다.</div>
										</li>
									</div>
								</c:if>

								<!-- 책정보 끝---------------------------------------------------------------------->

							</section>

							<!-- 하단 페이징 ---------------------------------------------------------------------->
							<!-- page -->
							<br>
							<div class="pageTypeA">
								<div>

									<!-- 
							[ 페이징 정보 ] 
							faqList = faq 페이징 결과값 
							paging = 페이징 클래스 
							paging.getPage() = 현재 페이지 
							paging.getPageSize() = 총 페이징 넘버 개수
							paging.getRecordSize() = 페이지당 출력할 데이터의 개수
							
							paging.getOnePage() = 한페이지에 출력할 페이징 넘버의 개수 
							paging.getStartPage() = 현재 페이지의 페이징 시작번호 
							paging.getEndPage() = 현재 페이지의 페이징 끝 번호
							
						-->

									<!-- 1. 이전페이지(<<, <) 처리 -->
									<span class="prev-btn"> <c:if
											test="${paging.getPage() <= paging.getPageSize() && paging.getPage() != 1}">
											<!-- 1 페이지(<<) 처리 -->
											<a href="javascript:void(0);"
												onclick="pagingSearch('${pageContext.request.contextPath}/userBook/book?page=1')">
												<img
												src="${pageContext.request.contextPath}/image/paging/btn_pagePrevG.gif">
											</a>

											<!-- 이전페이지(<) 처리 -->
											<c:if test="${paging.getStartPage() > 1}">
												<a href="javascript:void(0);"
													onclick="pagingSearch('${pageContext.request.contextPath}/userBook/book?page=${paging.getStartPage() - 1}')">
													<img
													src="${pageContext.request.contextPath}/image/paging/btn_pagePrev.gif">
												</a>
											</c:if>
										</c:if>
									</span>
									<!-- 2. 숫자 페이징 -->
									<span class="pageNum"> <c:forEach var="i"
											begin="${paging.getStartPage()}"
											end="${paging.getEndPage() > paging.getPageSize() ? paging.getPageSize() : paging.getEndPage()}">
											<c:choose>
												<c:when test="${i == paging.getPage()}">
													<a class="on" href=""
														onclick="pagingSearch('${pageContext.request.contextPath}/userBook/book?page=${i}')">${i}</a>
												</c:when>
												<c:otherwise>
													<a href="javascript:void(0);"
														onclick="pagingSearch('${pageContext.request.contextPath}/userBook/book?page=${i}')">${i}</a>
												</c:otherwise>
											</c:choose>
										</c:forEach>

									</span> <span class="next-btn"> <!-- 3. 다음페이지(>) 처리 --> <c:if
											test="${paging.getPageSize() > paging.getOnePage() && paging.getEndPage() < paging.getPageSize()}">
											<a href="javascript:void(0);"
												onclick="pagingSearch('${pageContext.request.contextPath}/userBook/book?page=${paging.getEndPage() + 1}')">
												<img
												src="${pageContext.request.contextPath}/image/paging/btn_pageNext.gif">
											</a>
										</c:if>


									</span>
								</div>
							</div>
							<!-- //page -->



						</div>


						<!-- //loop -->


					</div>
					<!-- //right contents -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>