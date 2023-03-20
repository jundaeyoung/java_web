<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
	background-color: #cbcbcb;
}

header {
	padding: 20px;
	text-align: center;
}

section {
	margin: 30px;
	display: flex;
	padding: 30px;
}

fieldset {
	width: 100%;
}

label {
	flex: 1;
}

section ul {
	margin: 30px;
	list-style: none;
}

li {
	display: flex;
	padding: 30px;
}

input {
	flex: 4;
	background-color: white;
	border-radius: 3px;
	color: gray;
}
</style>

</head>
<body>

	<header>
		<h1>flex form 태그 만들어보기</h1>
	</header>

	<section>
		<fieldset>
			<form action=""method="GET">
				<ul>
					<li><label>Name : </label> <input></input></li>
					<li><label>password : </label> <input></input></li>
				</ul>
			</form>
		</fieldset>
	</section>

</body>
</html>