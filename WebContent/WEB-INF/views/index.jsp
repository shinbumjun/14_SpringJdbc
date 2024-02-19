<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<!-- 메서드 영역 -->
<% 
	System.out.println("Controller에서 저장한 세션값 jsp에서 확인해보기 : " + session.getAttribute("memberId"));
%> 

<html>
<head>
  <meta charset="UTF-8">
  
  	<script type="text/javascript">
		//컨트롤러에서 보낸 메세지가 있을 경우
		window.onload = function(e){ 
			
			var resultMsg = '${resultMsg}';
			var resultCode = '${resultCode}';
			if(resultMsg.length > 0){
				alert(resultMsg);
				// 메시지를 한 번 보여준 후 resultMsg 값을 비웁니다.
		        resultMsg = '';
			}
			
			// 새로고침 할 때 마다 뜨길래 코드를 아래와 같이 작성했는데 이러면 메시지가 아예 안뜸 
		    /* var resultMsg = '${resultMsg}';
		    var resultCode = '${resultCode}';
		    if(resultMsg.length > 0){
		        // 로컬 스토리지에 메시지를 저장합니다.
		        localStorage.setItem('resultMsg', resultMsg);
		        alert(resultMsg);
		        // 메시지를 한 번 보여준 후 resultMsg 값을 비웁니다.
		        '${resultMsg}' = '';
		    } else {
		        // 이전에 저장된 메시지가 있는지 확인하고 있다면 표시합니다.
		       var storedMsg = localStorage.getItem('resultMsg');
		        if (storedMsg) {
		            alert(storedMsg);
		            // 이전에 저장된 메시지를 지웁니다.
		            localStorage.removeItem('resultMsg');
		        }
		    } */
			

		}
	</script>
  
  <title>13_SpringJdbc</title>
  <link rel="stylesheet" href="<c:url value='/resources/css/menu.css'/>">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
</head>
<body>
<div id="menu">
  <ul>
    <li id="logo">bumjun</li>
    <li><a href="/spring/csvmember">업로드</a></li>
    <li><a href="">홈</a></li>
    <li><a href="/spring/list">게시판</a></li>
    
    
    <!-- 로그인일 했을때는 > 로그아웃, 로그아웃을 누르면 > 로그인 = session을 이용해서 해보자  -->
    <!-- li><a href="/spring/index">홈</a></li -->
    <!-- li><a href="/spring/loginPage">로그인</a></li -->
    <!-- 세션에 "id"가 존재하면 로그인 상태 -->
    <c:if test="${not empty sessionScope.memberId}">
    	<li><a href="/spring/logout">logout</a></li>
    	<li><c:out value="${sessionScope.memberId}" /></li>
	</c:if>

    <!-- 세션에 "id"가 존재하지 않으면 로그아웃 상태 -->
    <c:if test="${empty sessionScope.memberId}">
    	<li><a href="/spring/loginPage">로그인</a></li>
	</c:if>
    
  </ul>
</div>
<div style="text-align:center">
  <h1>홈입니다</h1>

</div>
</body>
</html>