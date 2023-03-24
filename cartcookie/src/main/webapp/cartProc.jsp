<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%


// name값을 똑같이설정했다.
String[] fruits = request.getParameterValues("fruit");
String[] names = {"사과","바나나","복숭아"};
// 방어적 코드
if(fruits != null && fruits.length > 0){
	//사용자가 체크박스를 하나라도 누른경우이다.
	for(String fruit : fruits){
		String countParam = fruit + " : count";
		out.println(fruit);
	}
}
String isDelete = request.getParameter("delete");
if (isDelete != null) {
	if (isDelete.equals("delete")) {
		//삭제처리
	}
}
%>