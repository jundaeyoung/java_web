<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	String id = (String) session.getAttribute("id");
	String home_id = "3";
	session.setAttribute("home_id", home_id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>airbnb</title>
<link rel="shortcut icon" sizes="76x76" type="image/x-icon"
	href="https://a0.muscache.com/airbnb/static/logotype_favicon-21cc8e6c6a2cca43f061d2dcabdf6e58.ico">
</head>
<style>
* {
	background-color: white;
	margin: 0;
	padding: 0;
}

.header {
	display: flex;
	align-items: center;
	justify-content: center;
}

.header div {
	flex: 1;
	margin: 10px;
	display: flex;
}

.serch {
	border-radius: 30px;
	padding: 10px;
	display: flex;
	align-items: center;
	justify-content: center;
}

input {
	height: 40px;
	text-align: center;
	justify-content: center;
}

#body {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

#title {
	align-items: flex-start;
	margin-left: -320px;
}

h2, h5 {
	margin: 20px;
}

.home {
	width: 900px;
	margin-left: 100px;
}

.homeImgDiv {
	display: flex;
}

.homeImgDiv section {
	margin-left: 5px;
}

#content {
	margin: 20px;
	width: 500px;
	display: flex;
	flex-direction: column;
}
#content h5{
	margin-left: 1px; 
}

.info div {
	display: flex;
	flex-direction: row;
}

.info div div {
	color: black;
	display: flex;
	flex-direction: column;
	margin: 10px;
}

.info div div h6 {
	color: #7A7979;
}

#explanation {
	display: flex;
	flex: row;
}

#calendar {
	width: 350px;
	height: 300px;
	box-shadow: 2px 3px 5px 0px;
	border: 1px solid #D7D6D6;
	border-radius: 20px;
	justify-content: start;
	display: flex;
	flex-direction: column;
	padding: 20px;
}

#calendar h1 {
	display: flex;
	margin: 10px;
	heigt: 50px;
}

#calendar div {
	display: flex;
	flex-direction: row;
	align-items: center;
}

#calendar div h3 {
	width: 100px;
}

#calendar form {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-right: 130px;
	justify-content: center;
}

.search__box {
	width: 430px;
	display: inline-block;
	padding: 20px 30px;
	background-color: white;
	position: relative;
	top: 10px;
	left: 50px;
	border-radius: 6px;
	box-shadow: 0 2px 2px 0 rgb(214, 214, 214);
}

.search__title {
	padding: 10px 0;
	font-size: 30px;
	font-weight: 800;
	color: rgb(75, 74, 74);
}

table {
	width: 100%;
}

.search__sub__title {
	padding: 10px 0;
	font-size: 12px;
	font-weight: 600;
}

.search__input {
	height: 45px;
	width: 100%;
	color: rgb(100, 98, 98);
	font-size: 15px;
	border: 1px solid rgb(230, 227, 227);
}

.search__button {
	display: grid;
	justify-content: end;
	padding: 20px 0;
}

.search__button button {
	background-color: #FF5A5F;
	color: white;
	width: 70px;
	height: 45px;
	font-size: 15px;
	font-weight: 700; /*굵기*/
	border-radius: 6px;
	border: 0;
	cursor: pointer;
}
</style>
<body>
	<section class="header">
		<div class="icon">
			<a href="/exer/airbnbHomeLogin.jsp"><img alt=""
				src="images/airbnb.jpg"></a>
		</div>
		<div class="air"></div>
		<div>
			<form action="/exer/searchcontroller" method="POST" class="serch">
				<input type="text" name="search"
					style="border-radius: 20px; width: 300px;"
					placeholder="어디든지 | 언제든 일주일 | 게스트추가">
				<button type="submit" style="border: none">
					<img alt="" src="images/search.png" style="height: 45px">
				</button>

			</form>
		</div>
		<div>당신의 공간을 에어비엔비하세요</div>
		<div>
			<a href="/exer/index.jsp"><img alt="" src="images/Login.png"></a>
		</div>
	</section>
	<hr>
	<section id=body>
		<div id=title>
			<h2>이즈 클리프 하우스. 오픈 오션 뷰. 국립공원.</h2>
			<h5>⭐4.84 · 후기 309개 · 南伊豆町, 静岡県, 일본</h5>
		</div>
		<div class=home>
			<div class=homeImgDiv>
				<section>
					<img alt="" src="images/home3/home3_1.png">
				</section>
				<section>
					<img alt="" src="images/home3/home3_2.png"> <img alt=""
						src="images/home3/home3_3.png">
				</section>
				<section>
					<img alt="" src="images/home3/home3_4.png"> <img alt=""
						src="images/home3/home3_5.png">
				</section>
			</div>
			<div id=explanation>
				<div id=content>
					<h3>Niseko Mountain Guides 님이 호스팅하는 집</h3>
					<h5>최대 인원 6명 · 침실 3개 · 침대 5개 · 욕실 1개</h5>
					<hr>

					<div class=info>
						<div>
							<img alt="" src="images/home1/location.png" style="height:52px; margin-top: 10px;">
							<div>
								훌륭한 숙소 위치
								<h6>최근 숙박한 게스트 중 90%가 위치에 별점 5점을 준 숙소입니다.</h6>
							</div>
						</div>
						<div>
							<img alt="" src="images/home1/desk.png" style="height:50px;">
							<div>
								업무 전용 공간
								<h6>와이파이를 갖추고 업무에 적합한 공용 공간입니다.</h6>
							</div>
						</div>
						<div>
							<img alt="" src="images/home1/checkin.png" style="height:50px;">
							<div>
								셀프 체크인
								<h6>열쇠 보관함을 이용해 체크인하세요.</h6>
							</div>
						</div>
						<hr>
						<h2 style="margin: 20px; color: red">에어커버</h2>
						<p style="margin: 20px">모든 예약에는 호스트가 예약을 취소하거나 숙소 정보가 정확하지 않은
							경우 또는 체크인에 문제가 있는 상황에 대비한 무료 보호 프로그램이 포함됩니다.</p>
					</div>
				</div>
				<section>
					<div class="search__box">
						<div class="search__title">
							특색 있는 숙소와 즐길<br /> 거리를 예약하세요.
						</div>
						<form action="/exer/reservationController" method="post">
						<table>
							<tr>
								<td class="search__sub__title">체크인</td>
								<td class="search__sub__title">체크아웃</td>
							</tr>
							<tr>
								<td><input class="search__input" type="date" name="start_date"/></td>
								<td><input class="search__input" type="date" name="end_date"/></td>
							</tr>
								<tr>
								<td colspan="2" class="search__sub__title" >인원</td>
							</tr>
							<tr>
								<td colspan="2" ><select class="search__input" name="personNumber">
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
										<option>6</option>
								</select></td>
							</tr>
						</table>
						<div class="search__button">
							<button type="submit" style="width: 420px">예약하기</button>
						</div>
						<input type="text" style="display: none" name="id" value="<%=id %>">
						<input type="text" style="display: none" name="home_id" value="<%=home_id %>">
						</form>
					</div>
				</section>
			</div>


		</div>
	</section>
</body>
</html>