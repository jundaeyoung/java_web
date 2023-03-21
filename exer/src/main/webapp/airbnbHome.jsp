<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
			<img alt="" src="images/airbnb.jpg">
		</div>
		<div class="air"></div>
		<div>
			<form action="/exer/searchcontroller" method="POST" class="serch">
				<input type="text" name = "search" style="border-radius: 20px; width: 300px;"
					placeholder="어디든지 | 언제든 일주일 | 게스트추가"> <button type="submit" style="border: none"><img
					alt="" src="images/search.png" style="height:45px"></button>

			</form>
		</div>
		<div>당신의 공간을 에어비엔비하세요</div>
		<div>
			<a href="/exer/signin.html"><img alt="" src="images/myinfo.jpg"></a>
		</div>
	</section>
	<section class="list">
		<form action="" method="GET" class="serch">
			<div>
				<a href="form1.jsp"><img alt="" src="images/list1.jpg"></a>
			</div>
			<div>
				<a href="form1.jsp"><img alt="" src="images/list2.jpg"></a>
			</div>
			<div>
				<a href="form1.jsp"><img alt="" src="images/list3.jpg"></a>
			</div>
			<div>
				<a href="form1.jsp"><img alt="" src="images/list4.jpg"></a>
			</div>
			<div>
				<a href="form1.jsp"><img alt="" src="images/list5.jpg"></a>
			</div>
			<div>
				<a href="form1.jsp"><img alt="" src="images/list6.jpg"></a>
			</div>
			<div>
				<a href="form1.jsp"><img alt="" src="images/list7.jpg"></a>
			</div>
			<div>
				<a href="form1.jsp"><img alt="" src="images/list8.jpg"></a>
			</div>
			<div>
				<a href="form1.jsp"><img alt="" src="images/list9.jpg"></a>
			</div>
		</form>
	</section>
	<section class="home">
		<div>
			<form action="" method="GET" class="serch">
				<a
					href="https://www.airbnb.co.kr/rooms/607458038229062130?adults=1&category_tag=Tag%3A8536&children=0&infants=0&pets=0&search_mode=flex_destinations_search&check_in=2023-03-20&check_out=2023-03-25&federated_search_id=13850516-6580-4eee-ab76-51b58a0a24ef&source_impression_id=p3_1679300951_%2Fkn8LWl8w5iL1CSy"><img
					alt="" src="images/home1.jpg" style="border-radius: 20px">
					<p>Ganggu-myeon, Yeongdeok-gun,한국</p>
					<p>바다 전망</p>
					<p>3월 20일~25일</p>
					<p>\296,800 / 박</p> </a>
			</form>
		</div>
		<div>
			<form action="" method="GET" class="serch">
				<a
					href="https://www.airbnb.co.kr/rooms/50876204?adults=1&category_tag=Tag%3A8536&children=0&infants=0&pets=0&search_mode=flex_destinations_search&check_in=2023-03-21&check_out=2023-03-26&federated_search_id=13850516-6580-4eee-ab76-51b58a0a24ef&source_impression_id=p3_1679300915_ntx3xwzTPHblzTu0"><img
					alt="" src="images/home2.jpg" style="border-radius: 20px">
					<p>Niseko, Abuta District, Hokkaido, 일본</p>
					<p>산 전망</p>
					<p>3월 21일~26일</p>
					<p>\679,531 / 박</p> </a>
			</form>
		</div>
		<div>
			<form action="" method="GET" class="serch">
				<a
					href="https://www.airbnb.co.kr/rooms/16195307?adults=1&children=0&infants=0&pets=0&check_in=2023-06-18&check_out=2023-06-23&federated_search_id=1ece3087-cbf3-43c6-bf03-385bf078ce79&source_impression_id=p3_1679384721_jJFYxcKdzkDStV0Z"><img
					alt="" src="images/home5.jpg" style="border-radius: 20px">
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
					href="https://www.airbnb.co.kr/rooms/35127857?adults=1&category_tag=Tag%3A8536&children=0&infants=0&pets=0&search_mode=flex_destinations_search&check_in=2023-03-20&check_out=2023-03-25&federated_search_id=13850516-6580-4eee-ab76-51b58a0a24ef&source_impression_id=p3_1679300935_zctfORa40LhW2Pwz"><img
					alt="" src="images/home3.jpg" style="border-radius: 20px">
					<p>시모다, 일본</p>
					<p>바다 전망</p>
					<p>3월 20일~25일</p>
					<p>\1,012,190 / 박</p> </a>
			</form>
		</div>
		<div>
			<form action="" method="GET" class="serch">
				<a
					href="https://www.airbnb.co.kr/rooms/45846492?adults=1&category_tag=Tag%3A8536&children=0&infants=0&pets=0&search_mode=flex_destinations_search&check_in=2023-04-26&check_out=2023-05-01&federated_search_id=13850516-6580-4eee-ab76-51b58a0a24ef&source_impression_id=p3_1679300649_ABwBa2TAit4tQH7w"><img
					alt="" src="images/home4.jpg" style="border-radius: 20px">
					<p>수영구, 한국</p>
					<p>해변 및 바다 전망</p>
					<p>3월 26일~5월 1일</p>
					<p>\167,639 / 박</p> </a>
			</form>
		</div>
		<div>
			<form action="" method="GET" class="serch">
				<a
					href="https://www.airbnb.co.kr/rooms/563920211015794965?adults=1&category_tag=Tag%3A8536&children=0&infants=0&pets=0&search_mode=flex_destinations_search&check_in=2023-04-03&check_out=2023-04-08&federated_search_id=be300328-ff21-4ac6-9420-06fe16a6f942&source_impression_id=p3_1679383164_cRB1u6Mru6Szv%2FqS"><img
					alt="" src="images/home6.jpg" style="border-radius: 20px">
					<p>여수시, 전라남도, 한국</p>
					<p>시티 전망</p>
					<p>4월 3일~4월 8일</p>
					<p>\71,912 / 박</p> </a>
			</form>
		</div>
	</section>
</body>
</html>