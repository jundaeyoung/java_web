<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	display: flex;
	justify-content: center;
}

/*
	flex-grow 값은 flex item이 늘어날 수 있는 비율을 지정하며,
	기본값은 0이다.
	flex-grow 속성을 사용하여 확장하는 크기 비율을 조절할 수 있습니다.
*/
.page-container {
	flex:1 0 0 ;
 
	display: flex;
	justify-content: center;
	flex-direction: column;
	
	max-width: 500px;
		
}

.header {
	height: 80px;
	flex: 0 0 80px;
	border-bottom: 1px solid gray;
	background-color: blanchedalmond;
	
	display:flex;
	justify-content: flex-end;
	align-items: center;
	padding-right:10px; 
}

.main-container {
	flex: 1;
	background-color: blanchedalmond;
	padding: 0 16px;
}
section-title-heading{
	margin: 20px 0;
	font-size: 1.5rem;
}
.section section-home{
	display:flex;
}
.section-home-menu{
	margin-top:20px;
	display:flex;
	flex-direction: row;
}

.menu-icon{
	display: flex;
	border:1px solid gray;
	border-radius:17px;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	padding: 10px;
	margin-right: 10px;
	
	flex: 0 0 20px;
}
.article{
	display:flex;
	flex-direction:column;
}
.article-img{
	flex: 2 0 30px;
	margin-bottom: 10px;
	margin-top:40px;	
	
}
.article-img-description{
	flex:1;
}
</style>
</head>
<body>
	<div class="page-container">

		<div class="header">
			<span class="material-symbols-outlined"> search </span> <span
				class="material-symbols-outlined" style="color: red">
				favorite </span>
		</div>
		<div class="main-container">
			<div class="section section-title">
				<h2 class="section section-title-heading">JODUN</h2>
			</div>
			<div class="section section-home">
				<!-- 아이콘-->
				<div class="section-home-menu">
					<div class = "menu-icon">
						<span class="material-symbols-outlined" style="color:#DB2633">home</span>
						<span>All</span>
					</div>
					<div class = "menu-icon">
						<span class="material-symbols-outlined" style="color:#DB2633">home</span>
						<span>All</span>
					</div>
					<div class = "menu-icon">
						<span class="material-symbols-outlined" style="color:#DB2633">home</span>
						<span>All</span>
					</div>
					<div class = "menu-icon">
						<span class="material-symbols-outlined" style="color:#DB2633">home</span>
						<span>All</span>
					</div>
				</div>
				<br>
				<div class="article">
					<img alt="" class="article-img" src="images/image.jpg">			
					<span class="article-img-description">조던 시카고</span>
				</div>
				<div class="article">
					<img alt="" class="article-img" src="images/image2.jpg">			
					<span class="article-img-description">조던 모카 리버스 스캇</span>
				</div>
				<div class="article">
					<img alt="" class="article-img" src="images/image3.jpg">			
					<span class="article-img-description">조던 트래비스 스캇</span>
				</div>
				
			</div>
		</div>

	</div>

</body>
</html>