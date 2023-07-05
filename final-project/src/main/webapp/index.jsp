<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        html, body{
            height : 100%;
        }
        .outer{
            width: 100%;
            height: 100%;
        }
        #memberLogin{
            border: 1px solid black;
            width: 30%;
            height : 120px;
            margin: auto;
            margin-top: 15%;
        }
        #adminLogin{
            border: 1px solid black;
            width: 30%;
            height : 120px;
            margin: auto;
            margin-top: 5%;
        }
        #memberLogin>button{
            width: 100%;
            height: 100%;
        }
        #adminLogin>button{
            width: 100%;
            height: 100%;
        }
        
        #indexLogoDiv{
        	text-align: center;
        	margin-top: 7%;
        }
        
        #indexLogoDiv button{
        	border: none;
        	background-color: white;
        }
        
        #indexLogo{
        	width: 500px;
        	height: 500px;
        	border-radius: 50px;
        }
    </style>
</head>
<body>
    <div class="outer">
        <a href="adminEnroll">관리자 회원가입(임시)</a>
<!--         <div id="memberLogin"> -->
<!--             <button onclick="memberLogin()">일반사원</button> -->
<!--         </div> -->
<!--         <div id="adminLogin"> -->
<!--             <button onclick="adminLogin()">관리자</button> -->
<!--         </div> -->
	   	<div id="indexLogoDiv">
	   		<button onclick="memberLogin()" type="button">
	   			<img src="/final3/resources/image/logoGreen.png" id="indexLogo">
	   		</button>
	   	</div>
    </div>
<script>
	function memberLogin(){
		location.href = "member/mainPage.me";
	}
	
	function adminLogin(){
		location.href = "admin/mainPage.me";
	}
	
</script>
</body>
</html>