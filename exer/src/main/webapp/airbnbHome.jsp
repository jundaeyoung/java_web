<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>airbnb</title>
 <link rel="shortcut icon" sizes="76x76" type="image/x-icon"
        href="https://a0.muscache.com/airbnb/static/logotype_favicon-21cc8e6c6a2cca43f061d2dcabdf6e58.ico">
<style type="text/css">
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

.air {
	flex: 2;
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

.list form {
	margin-left:100px;
	display: flex;
}

div {
	flex: 1;
}

.home {
	margin: 10px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.home div {
	flex: 1;
}

.home div {
	flex: 1;
}
</style>
</head>
<body>
	<section class="header">
		<div class="icon">
			<a href="/exer/airbnbHome.jsp"><img alt="" src="images/airbnb.jpg"></a>
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
	<section class="list">
		<form action="" method="GET" class="serch">
			<div>
				<a href="/exer/error.jsp"><img alt="" src="images/list1.jpg"></a>
			</div>
			<div>
				<a href="/exer/error.jsp"><img alt="" src="images/list2.jpg"></a>
			</div>
			<div>
				<a href="/exer/error.jsp"><img alt="" src="images/list3.jpg"></a>
			</div>
			<div>
				<a href="/exer/error.jsp"><img alt="" src="images/list4.jpg"></a>
			</div>
			<div>
				<a href="/exer/error.jsp"><img alt="" src="images/list5.jpg"></a>
			</div>
			<div>
				<a href="/exer/error.jsp"><img alt="" src="images/list6.jpg"></a>
			</div>
			<div>
				<a href="/exer/error.jsp"><img alt="" src="images/list7.jpg"></a>
			</div>
			<div>
				<a href="/exer/error.jsp"><img alt="" src="images/list8.jpg"></a>
			</div>
			<div>
				<a href="/exer/error.jsp"><img alt="" src="images/list9.jpg"></a>
			</div>
		</form>
	</section>
	<section class="home">
		<div>
			<form action="" method="GET" class="serch">
				<a
					href="/exer/error.jsp"><img
					alt="" src="images/home1.png" style="border-radius: 20px">
					<p>Ganggu-myeon, Yeongdeok-gun,한국</p>
					<p>바다 전망</p>
					<p>3월 20일~25일</p>
					<p>\296,800 / 박</p> </a>
			</form>
		</div>
		<div>
			<form action="" method="GET" class="serch">
				<a
					href="/exer/error.jsp"><img
					alt="" src="images/home2.png" style="border-radius: 20px">
					<p>Niseko, Abuta District, Hokkaido, 일본</p>
					<p>산 전망</p>
					<p>3월 21일~26일</p>
					<p>\679,531 / 박</p> </a>
			</form>
		</div>
		<div>
			<form action="" method="GET" class="serch">
				<a
					href="/exer/error.jsp"><img
					alt="" src="images/home5.png" style="border-radius: 20px">
					<p>南伊豆町, 静岡県, 일본</p>
					<p>산 전망</p>
					<p>3월 23일~26일</p>
					<p>\483,007 / 박</p> </a>
			</form>
		</div>
	</section>
	<section class="home">
		<div>
			<form action="" method="GET" class="serch">
				<a
					href="/exer/error.jsp"><img
					alt="" src="images/home3.png" style="border-radius: 20px">
					<p>시모다, 일본</p>
					<p>바다 전망</p>
					<p>3월 20일~25일</p>
					<p>\1,012,190 / 박</p> </a>
			</form>
		</div>
		<div>
			<form action="" method="GET" class="serch">
				<a
					href="/exer/error.jsp"><img
					alt="" src="images/home4.png" style="border-radius: 20px">
					<p>수영구, 한국</p>
					<p>해변 및 바다 전망</p>
					<p>3월 26일~5월 1일</p>
					<p>\167,639 / 박</p> </a>
			</form>
		</div>
		<div>
			<form action="" method="GET" class="serch">
				<a
					href="/exer/error.jsp"><img
					alt="" src="images/home6.png" style="border-radius: 20px">
					<p>여수시, 전라남도, 한국</p>
					<p>시티 전망</p>
					<p>4월 3일~4월 8일</p>
					<p>\71,912 / 박</p> </a>
			</form>
		</div>
	</section>
</body>
</html>