<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	align-items: start;
	margin-right: 200px;
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
			<a href="/exer/airbnbHome.jsp"><img alt=""
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
			<a href="/exer/signin.jsp"><img alt="" src="images/myinfo.jpg"></a>
		</div>
	</section>
	<hr>
	<section id=body>
		<div id=title>
			<h2>바다를 보며 지친 몸과 피로를 풀 수 있는 풀빌라201</h2>
			<h5>⭐4.67 · 후기 3개 · Ganggu-myeon, Yeongdeok-gun, 경상북도, 한국</h5>
		</div>
		<div class=home>
			<div class=homeImgDiv>
				<section>
					<img alt="" src="images/home1/home1_1.png">
				</section>
				<section>
					<img alt="" src="images/home1/home1_2.png"> <img alt=""
						src="images/home1/home1_3.png">
				</section>
				<section>
					<img alt="" src="images/home1/home1_4.png"> <img alt=""
						src="images/home1/home1_5.png">
				</section>
			</div>
			<div id=explanation>
				<div id=content>
					<h3>Onda 님이 호스팅하는 펜션</h3>
					<h5>최대 인원 6명 · 침대 2개 · 욕실 1개</h5>
					<hr>

					<div class=info>
						<div>
							<img alt="" src="images/home1/checkin.png">
							<div>
								셀프 체크인
								<h6>안내 직원의 도움을 받아 체크인하실 수 있어요.</h6>
							</div>
						</div>
						<div>
							<img alt="" src="images/home1/play.png">
							<div>
								마음껏 물놀이를 즐기세요
								<h6>해당 지역에서 수영장을 갖춘 몇 안 되는 숙소 중 하나입니다.</h6>
							</div>
						</div>
						<div>
							<img alt="" src="images/home1/star.png">
							<div>
								경험이 풍부한 호스트
								<h6>Onda님은 다른 숙소에 대해 32개의 후기가 있습니다.</h6>
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
						<table>
							<tr>
								<td class="search__sub__title">체크인</td>
								<td class="search__sub__title">체크아웃</td>
							</tr>
							<tr>
								<td><input class="search__input" type="date" /></td>
								<td><input class="search__input" type="date" /></td>
							</tr>
							<tr>
								<td colspan="2" class="search__sub__title">인원</td>
							</tr>
							<tr>
								<td colspan="2"><select class="search__input">
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
					</div>
				</section>
			</div>


		</div>
	</section>
</body>
</html>