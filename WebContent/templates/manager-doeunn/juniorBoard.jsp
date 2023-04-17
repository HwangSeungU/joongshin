<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������������-�ִϾ�Խ��Ǹ��</title>
<link rel="stylesheet" href="../../static/css/manager-doeunn/junior-board.css">
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
                        <input placeholder="�Խñ� �˻�"/>
                    </div>
                    <button type="button" class="delete-btn">�Խù� ����</button>
                </section>
                <section class="content">
                    <div class="content-line top">
                        <input type="checkbox" name="check-top" id="check-top" size="20"/>
                        <div>�Խù� ��ȣ</div>
                        <div>����</div>
                        <div>����</div>
                        <div>�ۼ���¥</div>
                        <div>ȸ����ȣ</div>
                    </div>
                </section>
            </form>
        </main>
   </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../../static/js/manager-doeunn/junior-borad.js"></script>
</html>