<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	box-shadow:2px 3px 5px 0px;
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
#calendar div{
	display: flex;
	flex-direction: row;
	align-items: center;
}
#calendar div h3{
	width: 100px;
	
	
}

#calendar form {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-right: 130px;
	justify-content: center;
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

					</div>
				</div>
				<div id=calendar>
					<div>
						<h1>₩290,440</h1>
						<h4>/박</h4>
						<h5>⭐ 4.67 · 후기 3개</h5>
					</div>

					<form name="해당 폼의 이름" action="값을 보낼 주소" method="post">
						<input type='date' name='userBirthday' value='1999-03-30' />

					</form>
				</div>
			</div>


		</div>
	</section>
</body>
</html>