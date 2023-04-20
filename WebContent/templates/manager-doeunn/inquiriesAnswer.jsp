<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������������-���Ǵ亯</title>
<link rel="stylesheet" href="../../static/css/manager-doeunn/inquiries-answer.css">
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
                        <li onclick="location.href='userBoardList.jsp'">�̿��� �Խ���</li>
						<li onclick="location.href='juniorBoardList.jsp'">�ִϾ� �Խ���</li>
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
                <h3>1:1 ���� �亯 ����ϱ�</h3>
            </div>
            <form class="main-container">
                <div class="line">
                    <h4>ȸ�� ��ȣ</h4>
                    <div class="item-box">
                        <div class="info-box"></div>
                    </div>
                </div>
                <div class="line">
                    <h4>���� �����</h4>
                    <div class="item-box">
                        <div class="info-box"></div>
                    </div>
                </div>
                <div class="line">
                    <h4>����</h4>
                    <div class="item-box">
                        <div class="info-box long-info"></div>
                    </div>
                </div>
                <div class="line">
                    <h4>�亯 ����</h4>
                    <div class="item-box">
                        <div class="info-box"></div>
                    </div>
                </div>
                <div class="line">
                    <h4>�ֱ� �亯��</h4>
                    <div class="item-box">
                        <div class="info-box"></div>
                    </div>
                </div>
                <div class="line">
                    <h4>�亯</h4>
                    <div class="item-box">
                        <textarea class="answer-box" name="answer"></textarea>
                    </div>
                </div>
                <div class="line">
                    <button class="answer-btn">�亯 �Ϸ�</button>
                </div>
            </form>
        </main>
   </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../../static/js/manager-doeunn/inquiries-answer.js"></script>
</html>