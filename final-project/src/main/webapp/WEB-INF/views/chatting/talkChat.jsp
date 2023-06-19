<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
@charset "UTF-8";
* {
    margin: 0;
    padding: 0;
}
li {
    list-style: none;
}
html {
    font-size: 62.5%;
}
.swal-footer {
    text-align: center;
}


/* 채팅방 목록 */
main {
    display:none;
    width: 35vw;
    min-width: 300px;
    height: 90vh;
    border: 1px solid #000;
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
}
 
main h1 {
    color:ghostwhite;
    background-color:#573737;  
    font-size: 2rem;
    padding: 10px;
    height: 50px;
    box-sizing: border-box;
}
 
main .new_chat {
    position: absolute;
    top: 10px;
    right: 10px;
    border-radius: 3px;
    padding: 3px;
    background: #fff;
    cursor: pointer;
}
 
main .new_chat:hover {
    background: #eee;
}
 
main nav {
     font-size: 1.6rem;
     display: flex;
     text-align: center;
     margin-bottom: 5px;
     padding: 0 7px;
}
 
main nav > span:first-child {
    width: 80%;
}
 
main nav > span:last-child {
    width: 20%;
}
 
main ul {
    overflow-y: auto;
    max-height: calc(100% - 50px);
}
 
main li {
    font-size: 1.6rem;
    width: 100%;
    height: 70px;
    padding: 7px;
    box-sizing: border-box;
    display: flex;
    justify-content: space-between;
}
 
main li:hover {
   background: #eee;
}
 
main .chat_title {
    font-weight: bold;
    width: 80%;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
 
main .chat_count {
    width: 20%;
    text-align: center;
}
 
/* 채팅방 목록 */
 
 
 
/* 채팅방 안 */
 
.chat {
    width: 50vw;
    min-width: 300px;
    height: 90vh;
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    z-index: 10;
    display: none;
}
 
.chat > div {
    height: 100%;
    display: flex;
}
 
.chat .chat_body {
    background: rgb(195, 204, 221);
    height: 100%;
    width: 70%;
    order: 1;
    border: 1px solid #000;
    position: relative;
}
 
.chat h2 {
    font-size: 2rem;
    padding: 10px;
    height: 50px;
    box-sizing: border-box;
    text-align: center;
    background: #eee;
}
 
.chat .chat_back {
    font-size: 2rem;
    width: 50px;
    height: 50px;
    position: absolute;
    top: 0;
    left: 0;
    border: none;
    cursor: pointer;
}
 
.chat ul.chat_list {
    overflow-y: auto;
    height: calc(100% - 150px);
    box-sizing: border-box;
    padding: 5px 0;
}
 
.chat li {
    font-size: 1.5rem;
}
 
.chat li > div {
    padding: 10px;
    display: flex;
}
 
.chat li .notification {
    text-align: center;
}
 
.chat li .notification span {
    margin: 0 auto;
    border-radius: 15px;
    padding: 5px 10px;
    background: #ae9191;
    color: #fff;
}
 
.chat li > div .nickname {
    padding: 3px;   
}
 
.chat li > div .message {
    display: flex; 
}
 
.chat .chat_me {
   justify-content: end;
}
 
.chat .chat_other {
    justify-content: start;
}
 
.chat .chat_other .chat_in_time {
    order: 1;
}
 
.chat .chat_in_time {
    font-size: 1.3rem;
    margin: 0 5px;
    display: flex;
    align-items: flex-end;
}
 
.chat .chat_content {
    padding: 5px;
    border-radius: 3px;
    box-shadow: 0px 2px 3px 0px rgb(0 0 0 / 25%);
    display: inline-block;
    max-width: 250px;
    max-height: 400px;
    overflow-y: auto;
    word-break: break-all;
}
 
.chat .chat_me .chat_content {
    background: yellow;
}
 
.chat .chat_other .chat_content {
    background: #fff;
}
 
.chat .chat_input {
    height: 100px;
    display: flex;
    background: #fff;
}
 
.chat_input .chat_input_area {
    width: 87%;
}
 
.chat_input .chat_input_area textarea {
    width: 100%;
    height: 100%;
    border: none;
    resize: none;
    padding: 8px;
    box-sizing: border-box;
}
 
.chat_input .chat_input_area textarea:focus {
    outline: none;
}
 
.chat_input .chat_button_area {
    width: 13%;
}
 
.chat_input .chat_button_area button {
    background: yellow;
    border: 1px solid #ddd;
    border-radius: 3px;
    padding: 5px;
    width: 90%;
    margin-top: 10px;
    cursor: pointer;
}
 
.chat .chat_users {
    border: 1px solid #ddd;
    width: 30%;
    height: 300px;
/*  position: absolute;
    right: 101%;
    top: 0; */
    margin-right: 3px;
}
 
/* 참가인원 */
.chat .chat_users h2 {
    font-size: 1.6rem;
}
 
.chat .chat_users .chat_nickname {
    font-size: 1.6rem;
    height: calc(100% - 50px);
    overflow: auto;
}
    
.chat .chat_users .chat_nickname li {
    padding: 5px;
}
 
/* 참가인원 */
 
 
/* 채팅방 안 */
 
 
 
@media(max-width: 1024px)  {
    html {
        font-size: 60%;
    }
    main {
        width: 99vw;
    }
    
    .chat {
        width: 99vw;
    }
}
    </style>

</head>
<body>
    <!-- 채팅방 목록 -->
    <button id="bubble" value="말풍선">말풍선</button>

    <main id="plz">
        <h1>채팅방</h1>
        <button class="new_chat">새 채팅방 만들기</button>
        <nav>
            <span>방 제목</span>
            <span>인원</span>
        </nav>
        <hr>

            <ul>
                <li>

                    <span class="chat_title">채팅창 제목</span>
                    <span class="chat_count">177</span>

                </li>
            </ul>
        </main>
        <!-- 채팅방 목록 -->

        <!-- 채팅방 입장 -->
        <div class="chat">
            <div>
                <div class="chat_body">
                    <h2 class="chat_title">1번방</h2>
                    <button class="chat_back">◀</button>

                    <ul class="chat_list">
                        <li>
                             <div class="notification">
                            <span>${nowDate.dateString}</span>
                        </div> 
                        </li>
                    </ul>

                    <div class="chat_input">
                        <div class="chat_input_area">
                            <textarea></textarea>
                        </div>

                        <div class="chat_button_area">
                            <button>전송</button>
                        </div>
                    </div>
                </div>

                <div class="chat_users">
                    <h2>
                    참가인원
                        <span class="user"></span>
                    </h2>

                    <div class="chat_nickname">
                        <ul>
                            <li>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- 채팅방 입장 -->

        <!-- sock js -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.5.2/sockjs.min.js"></script>
        <!-- STOMP -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>

        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script>
$(function(){
    
$("#bubble").click(function(){
 var pop = $(this).siblings('#plz');

    $(pop)
        .css('opacity',0)
        .slideToggle(380 , 'swing')
        .animate(
        { opacity : 1 }
        ,{ queue : false , duration : 700}
        ,'swing');
    });
});