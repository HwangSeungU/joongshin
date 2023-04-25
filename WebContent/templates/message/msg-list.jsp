<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../../static/css/message-jym/msg-main-page.css">
    <title>chat</title>
</head>
<style>
#app-body {
    height: 100%;
    position: relative;
    flex-grow: 1;
    transition: opacity .3s ease-in;
}

#app {
    -webkit-text-size-adjust: 100%;
    -moz-text-size-adjust: 100%;
    text-size-adjust: 100%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    opacity: 0;
    min-height: 100%;
}

body {
    height: 100%;
    margin: 0;
    font-family: Noto Sans KR,Malgun Gothic,-apple-system,Segoe UI,Roboto,Noto Sans,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #323232;
    text-align: left;
    background-color: #fff;
}

ul li {
    list-style: none;
}

* {
    word-break: break-word;
}

.chat-list {
    padding-top: 3rem;
}

.chat-list .page-header {
    position: static;
    border-bottom: none;
}

.chat-list .page-body {
    min-height: -webkit-fill-available;
    min-height: -moz-available;
    min-height: stretch;
    padding: 1.5rem 0 9.6875rem;
}

.chat-list .container {
    height: 188px;
    width: 570px;
}

ul {
    padding: 0;
    margin-top: 0;
}

.container {
    width: 100%;
    padding-right: 0.9375rem;
    padding-left: 0.9375rem;
    margin-right: auto;
    margin-left: auto;
}

.row {
    display: flex;
    flex-wrap: wrap;
    margin-right: -0.9375rem;
    margin-left: -0.9375rem;
}

.container .row{
    /* margin: auto!important; */
    margin-right: 0;
    margin-left: 0;
}

.chat-item {
    cursor: pointer;
    padding: 0.875rem 1rem 0.75rem;
    background-color: #fff;
    margin-bottom: 0.625rem;
    border: 0.06rem solid #f2f2f2;
    border-radius: 8px;
    height: 110px;
}

.badge-list {
    position: relative;
    top: -0.0625rem;
}

.chat-item section.user-info {
    height: 2.75rem;
    position: relative;
}

.chat-item .row {
    margin: 0;
}

.chat-item section.user-info div.profile {
    padding-right: 0;
    padding-left: 0;
}

.chat-item section.user-info div.profile .user-profile-picture {
    width: 2.75rem;
    height: 2.75rem;
}

.chat-item div.profile div {
    border-radius: 10px;
}

.user-profile-picture div {
    position: relative;
    width: 100%;
    height: 100%;
    border-radius: 50%;
    border: 0.0625rem solid #f2f2f2;
    overflow: hidden;
    background-size: cover;
    background-position: 50% 50%;
    background-color: #e1e1e1;
}

.chat-item section.user-info div.service-info {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    position: relative;
    top: -0.25rem;
    font-size: 0;
    padding: 0 0 0 0.625rem;
}

.col {
    flex-basis: 0;
    flex-grow: 1;
    max-width: 100%;
}

.col-12 {
    flex: 0 0 100%;
    max-width: 100%;
}

.chat-item section.user-info div.service-info .pro-status {
    display: flex;
    align-items: center;
}

.chat-item section.user-info div.service-info div>h5 {
    font-size: 1rem;
    line-height: 1.625rem;
    display: inline-block;
    margin: 0;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-weight: 700;
}

.chat-item section.user-info div.service-info .pro-info {
    padding: 0.125rem 0 0;
    color: #737373;
    font-size: .875rem;
    line-height: .875rem;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}

.chat-item section.user-info div.service-info .pro-info .divider {
    font-size: .75rem;
    background: none;
    vertical-align: bottom;
    padding: 0 0.5rem;
}

.chat-item div.last-message {
    margin-top: 0.5rem;
    padding: 0;
}

.chat-item div.last-message p {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    width: 100%;
    max-width: none;
    margin: 0;
    position: relative;
    padding-right: 1.875rem;
    color: #737373;
    font-size: .875rem;
}

.chat-item .divider {
    height: 0.0625rem;
    background-color: #f2f2f2;
    margin: 0.5rem 0;
}

.chat-item div.quote-info {
    justify-content: space-between;
}

.chat-item div.quote-info div.price {
    flex: 1;
    display: flex;
    align-items: center;
    overflow: hidden;
}



span.price-icon:before {
    display: block;
    content: "";
    width: 100%;
    height: 100%;
    background-image: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCI+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj48cmVjdCB3aWR0aD0iMTciIGhlaWdodD0iMTciIHg9IjEuNSIgeT0iMS41IiBzdHJva2U9IiNFMUUxRTEiIHJ4PSI0Ii8+PHBhdGggZmlsbD0iIzczNzM3MyIgZD0iTTEyLjM2NCAxMi45MzZsLjYxMi0yLjcyMmgtMS4yNzFsLjY1OSAyLjcyMnpNOS41MSA5LjMxNmgxLjA4bC0uNTMtMi4yNTYtLjU1IDIuMjU1em0tMS43MjcgMy42NTdsLjY2LTIuNzU5SDcuMTdsLjYxMiAyLjc2ek01LjEwOCA5LjMxNWguODI4bC0uNzMyLTMuMTY3Yy0uMTItLjU4Ny45LS43OSAxLjAzMi0uMTY4bC43MzIgMy4zMzVoMS42OWwuNzkyLTMuMjI3Yy4xMzItLjYyMyAxLjExNS0uNjM1IDEuMjYuMDEzbC43NzkgMy4yMTRoMS42OWwuNzY4LTMuMzU4Yy4xMi0uNTg4IDEuMTA0LS4zODQuOTYuMThsLS43NDMgMy4xNzhoLjgwM2MuMjY0IDAgLjM5Ni4yMDQuMzk2LjQ1NSAwIC4yNjQtLjEzMi40NDQtLjM4NC40NDRoLTEuMDJsLS44MTUgMy40OWMtLjIwNC45MzUtMS4yODMuOTQ4LTEuNS4wMTJsLS44NC0zLjUwMkg5LjI4M2wtLjg1MiAzLjUwMmMtLjE5MS45MjMtMS4yODMuOTIzLTEuNDc1LjAyNWwtLjgxNS0zLjUyN0g1LjEwOGMtLjI1MSAwLS40MDgtLjE5Mi0uNDA4LS40NTYgMC0uMjUyLjE0NC0uNDQzLjQwOC0uNDQzeiIvPjwvZz48L3N2Zz4=');
}

.chat-item div.quote-info div.price span.price-icon {
    position: relative;
    display: inline-block;
    width: 1.25rem;
    height: 1.25rem;
    margin-right: 0.25rem;
}

.chat-item div.quote-info div.price p {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    display: inline-block;
    width: auto;
    margin: 0;
    color: #323232;
    line-height: 1.25rem;
    font-size: .875rem;
    font-weight: 500;
}

.chat-item div.quote-info div.price p label{
    margin-bottom: 0;
}

chat-item div.quote-info div.updated-at {
    margin-left: 0.5rem;
}

.chat-item div.quote-info div.updated-at p {
    color: #b5b5b5;
    font-size: .75rem;
    margin: 0;
}

section {
    display: flex;
    justify-content: space-between;
}

section h3 {
    color: #323232;
    font-weight: 500;
    display: inline-block;
    margin-bottom: 0;
}

h3{
    margin-top: 0;
    margin-bottom: 0.5rem;
    font-size: 1.75rem;
    line-height: 2.625rem;
    font-weight: 400;
    letter-spacing: -.03125rem;

}

section .chat-list-edit-button {
    margin: auto 0;
    color: #737373;
}

a {
    color: #323232;
    background-color: transparent;
    text-decoration: none;
}

.page-title{
    height: 42px;
}

.page-header .row{
    margin-top: 3.125rem;
}

.chat-filter-wrapper {
    border-bottom: 0.0625rem solid #f2f2f2;
    height: 3rem;
}

.chat-filter-item {
    cursor: pointer;
    height: 100%;
    color: #737373;
    font-size: .875rem;
    padding: 0.875rem 0.25rem;
    float: left;
    margin-left: 1rem;
    height: 17px;
}

.chat-filter-item.selected {
    font-weight: 700;
    border-bottom: 0.125rem solid #323232;
    color: #323232;
}

.chat-filter-item:first-child {
    margin-left: 0;
}

section div .input-group {
    width: 100%;
    height: 2.5rem;
    background-color: #f2f2f2;
    border-radius: 8px;
    color: #999;
}



.input-group {
    position: relative;
    display: flex;
    flex-wrap: wrap;
    align-items: stretch;
    width: 100%;
}

.input-flex-group{
    color: #999;
}

section div .input-group input.form-control {
    height: 100%;
    color: #737373;
    border: none;
    background-color: transparent;
    padding:0;
}

section div .input-group .input-flex-group input.form-control {
    font-size: 1rem;
    flex: 1 1 0;
    width: 513px;
    margin: 0;
    outline: none;
    box-shadow: none;
}

section div .input-group .input-group-prepend img {
    width: 1.125rem;
    height: 1.125rem;
}

section div[class*=col] {
    padding: 0;
}

section div .input-group .input-flex-group {
    position: relative;
    display: block;
    flex: 1;
    height: 100%;
    margin-left: 0.5rem;
    padding: 0;
}

section div .input-group .input-group-prepend {
    display: flex;
    justify-content: center;
    align-items: center;
}

#input-group {
    width: 100%;
    height: 2.2rem;
    background-color: #f2f2f2;
    border-radius: 8px;
    padding: 0.3125rem 1rem;
    margin-bottom: 0.5rem;
    color: #999;
}

section div .input-group{
    font-size: .875rem;
    line-height: 1.3125rem;
    font-weight: 400;
    letter-spacing: -.0125rem;
}
</style>
<body>
    <div id="app-body">
        <!-- 채팅페이지 바디 -->
        <div class="chat-list">
            <!-- 해더 부분  -->
            <div class="page-header">
                <div class="container">
                    <section class="page-title">
                        <h3>채팅</h3>
                        <a href="/pro/chats/edit" class="chat-list-edit-button"> 편집 </a>
                    </section>
                    <section class="row">
                        <div class="col-12">
                            <div role="group" class="input-group" id="input-group">
                                <div class="input-group-prepend"><img
                                        src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxOCIgaGVpZ2h0PSIxOCIgdmlld0JveD0iMCAwIDE4IDE4Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgc3Ryb2tlPSIjNzM3MzczIiBzdHJva2Utd2lkdGg9IjEuNSI+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMwMSAtMjMzKSB0cmFuc2xhdGUoMjg1IDIyMikgdHJhbnNsYXRlKDE2IDExKSB0cmFuc2xhdGUoMSAxKSI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxjaXJjbGUgY3g9IjYuNjExIiBjeT0iNi42MTEiIHI9IjUuODYxIi8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0iTTE1LjI1IDE1LjI1TDExLjAwNyAxMS4wMDciLz4KICAgICAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPgo=">
                                </div>
                                <div class="input-flex-group">
                                    <input type="search" placeholder="쪽지 상대의 이름 또는 내용으로 검색해보세요." value=""
                                        class="form-search-text-input form-control" id="__BVID__14">
                                </div>
                                <!---->
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="chat-filter-wrapper">
                                <ul class="chat-filter">
                                    <li class="chat-filter-item ${receive ? '' : 'selected'}">
                                       <a href="javascript:location.href='${pageContext.request.contextPath}/MessageListOk.message?userId=3&receive=false'"> 보낸 채팅 </a>
                                      </li>
                                    <li class="chat-filter-item ${receive ? 'selected' : ''}"> 
                                       <a href="javascript:location.href='${pageContext.request.contextPath}/MessageListOk.message?userId=3&receive=true'" onclick="console.log('딸깍')"> 받은 채팅 </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
<!--          바디  -->
            <div class="page-body">
                <div class="container">
                    <ul class="row"></ul>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
   console.log(`${receive}`);
   let messages = `${messages}`;
</script>
<script type="text/javascript">
const $msgList = $('.page-body .container ul.row');

showMessageList();

function showMessageList() {
	messages = JSON.parse(messages);
	console.log(messages);
	let text = '';
	
	messages.forEach(msg => {
		text += `
			<li data-name="chat-list" class="col-12">
	            <div class="chat-item">
	                <div class="badge-list"></div>

	                <section class="row user-info align-items-start">
	                    <div class="service-info col">
	                        <div class="pro-status">
	                            <h5> ${msg.userName} </h5>
	                        </div>
	                    </div>
	                </section>
	                <div class="row last-message">
	                    <p>${msg.messageContents}</p>
	                </div>
	                <div class="divider"></div>
	                <div class="row quote-info">
	                    <div class="updated-at">
	                        <p>2022. 07. 25</p>
	                    </div>
	                </div>
	            </div>
	        </li>
		`
	});
	
	if(messages.length == 0){
		text += `
			<li>
		        <div>
					쪽지 기록이 없습니다.
				</div>
			</li>
		`
	}
	
	$msgList.append(text);
}
</script>
<script src="../../static/js/message-jym/msg-list.js"></script>
</html>