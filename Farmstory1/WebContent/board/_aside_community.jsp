<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cate = request.getParameter("cate");
%>
<div id="sub" class="community">
    <div>
        <img src="../img/sub_top_tit5.png" alt="COMMUNITY">
    </div>
    <section>
        <aside>
            <img src="../img/sub_aside_cate5_tit.png" alt="커뮤니티">
            <ul>
                <li class="on"><% (cate.equals("notice")) ? "on":"" %><a href="./list.jsp?group=community&care=notice">공지사항</a></li>
                <li><a href="./list.jsp?group=community&care=menu">오늘의식단</a></li>
                <li><a href="./list.jsp?group=community&care=chef">나도요리사</a></li>
                <li><a href="./list.jsp?group=community&care=faq">고객문의</a></li>
                <li><a href="./list.jsp?group=community&care=pna">자주묻는질문</a></li>
            </ul>
        </aside>
        <article>
            <nav>
                <img src="../img/sub_nav_tit_cate5_tit1.png" alt="공지사항"/>
                <p>

                    HOME > 커뮤니티 > <span>공지사항</span>

                </p>
            </nav>
        <div class="content">
            <!-- 컨텐츠 내용 시작 -->