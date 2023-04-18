<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������������-���Ǹ��</title>
<link rel="stylesheet" href="../../static/css/manager-doeunn/inquiries-list.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
   <div class="wrap">
        <header class="navi-bar">
            <div class="logo"></div>
            <div class="navi-container">
                <!-- navi-box �ϳ��� ū ī�װ� �ϳ��� �ش��մϴ�-->
               <section class="navi-box">
                    <div class="flex-line">
                        <div class="icon board-icon"></div>
                        <div class="navi-title">Ŀ�´�Ƽ ����</div>
                        <div class="arrow"></div>
                    </div>
                    <ul class="board-list list">
                        <li onclick="location.href='userBoard.jsp'">�̿��� �Խ���</li>
						<li onclick="location.href='juniorBoard.jsp'">�ִϾ� �Խ���</li>
                    </ul>
               </section>

               <section class="navi-box">
                    <div class="flex-line">
                        <div class="icon message-icon"></div>
                        <div class="navi-title">���� ����</div>
                        <div class="arrow"></div>
                    </div>
                    <ul class="inquiries-list list">
                        <li onclick="location.href='inquiriesList.jsp'">��ü ���Ǹ��</li>
                    </ul>
               </section>
            </div>
        </header>
        <main>
            <div class="main-title-box">
                <h3>�̿��� �Խ���</h3>
            </div>
            <form class="main-container">
                <section class="top-line">
                    <div class="search">
                        <div class="search-icon"></div>
                        <input placeholder="���Ǳ� �˻�"/>
                    </div>
                    <select name="select-option" class="select-option">
                        <option value="all">��ü</option>
                        <option value="waiting">���</option>
                    </select>
                    <button type="button" class="delete-btn">���Ǳ� ����</button>
                </section>
                <section class="content">
                    <div class="content-line top">
                        <input type="checkbox" name="check-top" id="check-top" size="20" style="width: 30px; text-align: center;"/>
                        <div style="width: 80px; text-align: center;">���� ��ȣ</div>
                        <div style="width: 250px; text-align: center;">����</div>
                        <div style="width: 300px; text-align: center;">����</div>
                        <div>�ۼ���¥</div>
                        <div>�亯��¥</div>
                        <div>����</div>
                    </div>
                </section>
            </form>
        </main>
   </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../../static/js/manager-doeunn/inquiries-list.js"></script>
</html>