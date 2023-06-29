<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
	.messenger_content {
	    background-color:#0E6251;
	    width:100%;
	    height: 750px;
	    margin:auto;
	}
	.innerOuter {
	    border:1px solid lightgray;
	    width:80%;
	    height:100%;
	    margin:auto;
	    padding:3% 7%;
	    background-color:white;
	}
    
    /* navi + 검색창 영영  */    
	.innerOuter>#msg_header{
		width:100%;
		height: 130px;
		margin-top: 10px;
		margin-bottom : 10px;
	}
    /* navi 영역 */
    #msg_header>#msg_nav{
       	width: 25%;
       	height: 100%;
       	float : left;
    }
        
	#msg_nav>ul{
		list-style-type: none;
		padding: 0;
		margin : 0;
		
	}
        
    #msg_nav li a{
		text-decoration-line: none;
		color: black;
		font-size: 20px;
		font-weight: 700;
	}

	#msg_nav li a:hover{
		font-size :23px;
		color: #009966;	
	}

	/* msg_search area */
    #msgSearchForm{
		width: 75%;
        height: 100%; 
        float : left;
         
   	}
      
     #msgSearchForm>form{
      	width:100%;
      	height:100%;
      	display : flex; /* 중앙정렬 방법 - 부모 요소 고정 */
      	justify-content: left; /* 자식 요소들 가운데로 이동  */
		align-items: center;
	}
      
    form>.custom-select{
    	width: 20%;
    	float:left;
    	margin-right:5px;
	}
      
    form .form-control{
    	width: 40%;
    	float:left;
    	margin-right: 5px;
	}
	
	/* list- button 영역 */
	#msg_list>#msg_btn_area{
		width : 100%;
		margin-top : 10px;
		margin-bottom :20px;
	}  
  
	#recMsgList {
      	text-align:center;
      	
	}
	
    #recMsgList>tbody>tr:hover {
      	cursor:pointer;
   	}
	
	#pagingArea {
      
      width:fit-content;
      margin:auto;
   	}
   	
   	#date-search-area{
   		display:none;
   	}
   	
   	#date-search-area>input{
   		width:45%;
   	}
   	
   	#date-search-area>p{
   		float:left;
   		margin:0px 10px 0px 5px;
   		height:37.99px; 
   	}
   	
</style>
</head>
<body>
	<div class="messenger_content">
	<div class="innerOuter">
		<h2 style="font-weight:800;">쪽지 <i id="messenger" class="fa-sharp fa-solid fa-paper-plane fa-sm" style="color: #0E6251;"></i></h2> 
		<div id="msg_header">
			<!-- 쪽지 네비영역 -->
			<div id="msg_nav">
				<ul>
					<li><a href="insert.mg">쪽지쓰기</a></li>
					<li><a href="list.mg">받은쪽지함</a></li>
					<li><a href="slist.mg">보낸쪽지함</a></li>
					<li><a href="tlist.mg">휴지통</a></li>
				</ul>
			</div>
	        <!-- 쪽지 검색 영역 -->
	        <div id="msgSearchForm">
		        <form action="#">
		        	<select id="option-box" class="custom-select" name="category">
		            	<option value="writer">작성자</option>
						<option value="title">제목</option>
						<option value="date">기간별</option>
		           	</select>
		           	<div id=date-search-area>
		           		<input type="date" name="startDate" class="form-control" id="startDate" value="${startDate}" ><p> ~ </p>
		           		<input type="date" name="endDate" class="form-control" id="endDate" value="${endDate}"> 
		           	</div>
		            <input type="text" class="form-control" name="keyword" id="keyword" value="${keyword}">
					<button type="submit" class="btn btn-secondary" id="search-btn" style="height:37.99px;">검색</button>
		    	</form>
	        </div>
		</div>
		<script>
			$(function(){
				$('#search-btn').on("click",function(){
					if(!$("#option-box").val() == ""){
						
						location.href="list.mg"
					}
				});
			
			})
		
			//기간별 검색시 날짜창 띄워주기 
			$(function(){
	   			$("#option-box").on("change", function(){
	   				
	   				if($(this).val() == 'date'){
	   					$("#date-search-area").show()
	   					$("input[name=keyword]").hide()
	   					
	   					
	   				}else{
	   					$("#date-search-area").hide()
	   					$("input[name=keyword]").show()
	   				}
	   			})
	   		});
			
		</script>

		<c:if test="${not empty category}">
		<script>
			$(function(){
				if($("#option-box option[value = '${category}']").val() =='date'){
					$("#date-search-area").show()
   					$("input[name=keyword]").hide()
				}else{
					$("#date-search-area").hide()
   					$("input[name=keyword]").show()
				}
				$("#option-box option[value = '${category}']").attr("selected", true);
			});		
			
		</script>
		
		</c:if>
				
		<div id="msg_list">
			<div id="msg_btn_area">
				<button type="button" id="delete-btn" class="btn btn-danger">삭제</button>
				<button type="button" id="reply-btn"class="btn btn-primary">답장</button>
			</div>
			
            <table id="recMsgList" class="table table-hover">
                <thead>
                    <tr>
                        <th width="10%">선택</th>
                        <th width="15%">보낸사람</th>
                        <th width="45%">제목</th>
                        <th width="30%">날짜</th>
                    </tr>
                </thead>
                <tbody>
                	<c:choose>
	                	<c:when test="${not empty msgList}">
	                		<c:forEach var="m" items="${msgList}">
                    		<tr>
		                        <td onclick="event.cancelBubble=true"><input type="checkbox" style="width:15px; height:15px;"></td>
		                        <td>${m.sender}<input type="hidden" value="${m.messengerNo}"></td>
		                        <c:choose>
		                        	<c:when test="${m.readStatus eq 'N'}">
		                        		<c:choose>
		                        			<c:when test="${m.emcStatus eq 'Y' }">
			                        			<td style="text-align:left; font-weight:700; "><i class="fa-solid fa-circle-exclamation fa-xl" style="color: #f4c92f;"></i> &nbsp;${m.msgTitle}</td>
		                        			</c:when>
		                        			<c:otherwise>
		                        			<td style="text-align:left; font-weight:700;">${m.msgTitle}</td>
		                        			</c:otherwise>
		                        		</c:choose>
		                        	</c:when>
		                        	<c:otherwise>
		                        		<c:choose>
			                        		<c:when test="${m.readStatus eq 'Y'}">
			                        			<td style="text-align:left;"><i class="fa-solid fa-circle-exclamation fa-xl" style="color: #f4c92f;"></i> &nbsp;${m.msgTitle}</td>
			                        		</c:when>
			                        		<c:otherwise>
			                        			<td style="text-align:left;">${m.msgTitle}</td>
			                        		</c:otherwise>
		                        		</c:choose>
		                        	</c:otherwise>
		                        </c:choose>
		                        <td>${m.recvDate}</td>
                    		</tr>
	                		</c:forEach>
    	            	</c:when>
    	            	<c:otherwise>
    	            		<tr>
    	            			<td colspan="5" onclick="event.cancelBubble=true">조회된 쪽지가 없습니다.</td>
    	            		</tr>
    	            	</c:otherwise>
                	</c:choose>
                </tbody>
            </table>
		</div>   
		<br>
		<div id="board-pagebar-area">
          	<div id="pagingArea">
				<ul class="pagination">
                	<c:choose>
                   		<c:when test="${pi.currentPage eq 1 }">
	                        <li class="page-item disabled"><a class="page-link">이전</a></li>
                   		</c:when>
                   		<c:otherwise>
	                         <li class="page-item"><a class="page-link" href="list.mg?currentPage=${pi.currentPage-1}&userNo=${loginUser.userNo}&category=${category}&keyword=${keyword}&startDate=${startDate}&endDate=${endDate}">이전</a></li>
                   		</c:otherwise>
                   	</c:choose>
                   	<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
	                        <li class="page-item"><a class="page-link" href="list.mg?currentPage=${p}&userNo=${loginUser.userNo}&category=${category}&keyword=${keyword}&startDate=${startDate}&endDate=${endDate}">${p}</a></li>
                   	</c:forEach>
                   	<c:choose>
                   		<c:when test="${pi.maxPage eq pi.currentPage}">
	                        <li class="page-item disabled"><a class="page-link">다음</a></li>
                   		</c:when>
                   		<c:otherwise>
	                        <li class="page-item"><a class="page-link" href="list.mg?currentPage=${pi.currentPage+1}&userNo=${loginUser.userNo}&category=${category}&keyword=${keyword}&startDate=${startDate}&endDate=${endDate}">다음</a></li>
                   		</c:otherwise>
                   	</c:choose>
               	</ul>
        	</div>
     	</div>
		
            <br clear="both"><br>
        </div>
	</div>
	<script>
			/* 쪽지 상세 페이지 이동 스크립트 */
			$(function(){
				$("#recMsgList>tbody tr").on("click","td", function(){
					//console.log($(this).siblings().eq(1).children().val());
					var msgNo = $(this).siblings().eq(1).children().val()
					
					location.href="recvMessage.mg?msgNo="+msgNo;
				});
			});
			
			/* 선택 삭제 script */
			$(function(){
				var msgNoArr = []; //쪽지 번호 담아줄 배열 생성 

				$("#recMsgList>tbody td").on("click","input[type=checkbox]",function(){
					//msgNo 찾기 
					//console.log($(this).parent().siblings().eq(0).children().val());
					var $msgNo = $(this).parent().siblings().eq(0).children().val();
					
					//checkbox가 선택되어 있다면 쪽지 번호를 배열에 담기 
					if($(this).prop("checked")==true){
						msgNoArr.push($msgNo)
					}else{
						for(var i=0 ; i<msgNoArr.length ;i++){
							//선택 취소시 기존에 담겨있던 쪽지 번호 배열에서 삭제 
							if(msgNoArr[i] === $msgNo){
								msgNoArr.splice(i,1);
							}
						}
					}
				});
				
				$("#delete-btn").on("click",function(){
					if(msgNoArr.length == 0){
						alert("삭제하실 쪽지를 선택해 주세요.");
					}else{
						if(confirm("쪽지를 삭제하시겠습니까?")){
							
							$.ajax({
								url : "recvMsgUpdate.mg",
								
								type :"get",
	            				
	            				traditional: true, //배열 넘기는 옵션
								
	            				data : {msgNoArr : msgNoArr},
								
								success : function(result){
									if(result == "YYYY"){
										if(confirm("쪽지가 삭제되었습니다. 휴지통으로 이동하시겠습니까?")){
											location.href="tlist.mg";
										}
									}else{
										alert("쪽지 삭제에 실패하였습니다. 다시 시도해 주세요 ")
										location.reload();
									}
									
								},
								
								error : function(){
									console.log("통신 실패")
								}
							
							});
						}
					}					
				});
			
			})
		/* 답장 script  */
		$(function(){
			
			var msgNo ="";
			
			var chkCount ="";
			
			$("#recMsgList>tbody td").on("click","input[type=checkbox]",function(){
				
				msgNo = $(this).parent().siblings().eq(0).children().val();
				
				var query = "input[type=checkbox]:checked"
				
				chkCount = document.querySelectorAll(query)
				
				console.log(chkCount.length);
				
			})
			
			
			$("#reply-btn").on("click",function(){
				
				if(chkCount.length>1){
					alert("한개만 선택해 주세요")
				}else if(chkCount.length == 1){
					location.href="relpyMsg.mg?msgNo="+msgNo;
				}else{
					location.href="insert.mg"
				}
			})
		});
		
	</script>
</body>
</html>