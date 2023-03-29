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
<!-- 배경 눈효과 -->
	
	<!-- 로딩바 추가 -->
	<!--
	<script src="//cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/pace.min.js"></script>
	-->
	<!-- 로딩바 추가 end -->
	
	<!-- Snowstorm start -->

<script src="https://tistory1.daumcdn.net/tistory/2211096/skin/images/jquery-1.8.3.min.js?_version_=1581083549"></script>
<script src="https://tistory1.daumcdn.net/tistory/2211096/skin/images/snowstorm.js?_version_=1581083549"></script>
<script src="https://tistory1.daumcdn.net/tistory/2211096/skin/images/snowstorm-min.js?_version_=1581083549"></script>
<script type="text/javascript" src="https://tistory1.daumcdn.net/tistory/2211096/skin/images/jquery.snow.js?_version_=1581083549"></script>
	
	<!--
<script> 
jQuery(document).ready( function(){
        //$.fn.snow();
});
 jQuery(document).ready( function(){
        //$.fn.snow({ minSize: 5, maxSize: 40, newOn: 800, flakeColor: '#0099FF' });
});
</script>
	-->	

<!-- Snowstorm end -->
	
<!-- 배경 눈효과 end -->
	
	
<!-- 마우스 효과 -->
	
	<script type="text/javascript">
// <![CDATA[
var colour="random"; // in addition to "random" can be set to any valid colour eg "#f0f" or "red"
var sparkles=50;

/****************************
*  Tinkerbell Magic Sparkle *
*(c)2005-13 mf2fm web-design*
*  http://www.mf2fm.com/rv  *
* DON'T EDIT BELOW THIS BOX *
****************************/
var x=ox=400;
var y=oy=300;
var swide=800;
var shigh=600;
var sleft=sdown=0;
var tiny=new Array();
var star=new Array();
var starv=new Array();
var starx=new Array();
var stary=new Array();
var tinyx=new Array();
var tinyy=new Array();
var tinyv=new Array();

window.onload=function() { if (document.getElementById) {
  var i, rats, rlef, rdow;
  for (var i=0; i<sparkles; i++) {
    var rats=createDiv(3, 3);
    rats.style.visibility="hidden";
    rats.style.zIndex="999";
    document.body.appendChild(tiny[i]=rats);
    starv[i]=0;
    tinyv[i]=0;
    var rats=createDiv(5, 5);
    rats.style.backgroundColor="transparent";
    rats.style.visibility="hidden";
    rats.style.zIndex="999";
    var rlef=createDiv(1, 5);
    var rdow=createDiv(5, 1);
    rats.appendChild(rlef);
    rats.appendChild(rdow);
    rlef.style.top="2px";
    rlef.style.left="0px";
    rdow.style.top="0px";
    rdow.style.left="2px";
    document.body.appendChild(star[i]=rats);
  }
  set_width();
  sparkle();
}}

function sparkle() {
  var c;
  if (Math.abs(x-ox)>1 || Math.abs(y-oy)>1) {
    ox=x;
    oy=y;
    for (c=0; c<sparkles; c++) if (!starv[c]) {
      star[c].style.left=(starx[c]=x)+"px";
      star[c].style.top=(stary[c]=y+1)+"px";
      star[c].style.clip="rect(0px, 5px, 5px, 0px)";
      star[c].childNodes[0].style.backgroundColor=star[c].childNodes[1].style.backgroundColor=(colour=="random")?newColour():colour;
      star[c].style.visibility="visible";
      starv[c]=50;
      break;
    }
  }
  for (c=0; c<sparkles; c++) {
    if (starv[c]) update_star(c);
    if (tinyv[c]) update_tiny(c);
  }
  setTimeout("sparkle()", 40);
}

function update_star(i) {
  if (--starv[i]==25) star[i].style.clip="rect(1px, 4px, 4px, 1px)";
  if (starv[i]) {
    stary[i]+=1+Math.random()*3;
    starx[i]+=(i%5-2)/5;
    if (stary[i]<shigh+sdown) {
      star[i].style.top=stary[i]+"px";
      star[i].style.left=starx[i]+"px";
    }
    else {
      star[i].style.visibility="hidden";
      starv[i]=0;
      return;
    }
  }
  else {
    tinyv[i]=50;
    tiny[i].style.top=(tinyy[i]=stary[i])+"px";
    tiny[i].style.left=(tinyx[i]=starx[i])+"px";
    tiny[i].style.width="2px";
    tiny[i].style.height="2px";
    tiny[i].style.backgroundColor=star[i].childNodes[0].style.backgroundColor;
    star[i].style.visibility="hidden";
    tiny[i].style.visibility="visible"
  }
}

function update_tiny(i) {
  if (--tinyv[i]==25) {
    tiny[i].style.width="1px";
    tiny[i].style.height="1px";
  }
  if (tinyv[i]) {
    tinyy[i]+=1+Math.random()*3;
    tinyx[i]+=(i%5-2)/5;
    if (tinyy[i]<shigh+sdown) {
      tiny[i].style.top=tinyy[i]+"px";
      tiny[i].style.left=tinyx[i]+"px";
    }
    else {
      tiny[i].style.visibility="hidden";
      tinyv[i]=0;
      return;
    }
  }
  else tiny[i].style.visibility="hidden";
}

document.onmousemove=mouse;
function mouse(e) {
  if (e) {
    y=e.pageY;
    x=e.pageX;
  }
  else {
    set_scroll();
    y=event.y+sdown;
    x=event.x+sleft;
  }
}

window.onscroll=set_scroll;
function set_scroll() {
  if (typeof(self.pageYOffset)=='number') {
    sdown=self.pageYOffset;
    sleft=self.pageXOffset;
  }
  else if (document.body && (document.body.scrollTop || document.body.scrollLeft)) {
    sdown=document.body.scrollTop;
    sleft=document.body.scrollLeft;
  }
  else if (document.documentElement && (document.documentElement.scrollTop || document.documentElement.scrollLeft)) {
    sleft=document.documentElement.scrollLeft;
    sdown=document.documentElement.scrollTop;
  }
  else {
    sdown=0;
    sleft=0;
  }
}

window.onresize=set_width;
function set_width() {
  var sw_min=999999;
  var sh_min=999999;
  if (document.documentElement && document.documentElement.clientWidth) {
    if (document.documentElement.clientWidth>0) sw_min=document.documentElement.clientWidth;
    if (document.documentElement.clientHeight>0) sh_min=document.documentElement.clientHeight;
  }
  if (typeof(self.innerWidth)=='number' && self.innerWidth) {
    if (self.innerWidth>0 && self.innerWidth<sw_min) sw_min=self.innerWidth;
    if (self.innerHeight>0 && self.innerHeight<sh_min) sh_min=self.innerHeight;
  }
  if (document.body.clientWidth) {
    if (document.body.clientWidth>0 && document.body.clientWidth<sw_min) sw_min=document.body.clientWidth;
    if (document.body.clientHeight>0 && document.body.clientHeight<sh_min) sh_min=document.body.clientHeight;
  }
  if (sw_min==999999 || sh_min==999999) {
    sw_min=800;
    sh_min=600;
  }
  swide=sw_min;
  shigh=sh_min;
}

function createDiv(height, width) {
  var div=document.createElement("div");
  div.style.position="absolute";
  div.style.height=height+"px";
  div.style.width=width+"px";
  div.style.overflow="hidden";
  return (div);
}

function newColour() {
  var c=new Array();
  c[0]=255;
  c[1]=Math.floor(Math.random()*256);
  c[2]=Math.floor(Math.random()*(256-c[1]/2));
  c.sort(function(){return (0.5 - Math.random());});
  return ("rgb("+c[0]+", "+c[1]+", "+c[2]+")");
}
// ]]>
</script>
	
<!-- 마우스 효과 end -->
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