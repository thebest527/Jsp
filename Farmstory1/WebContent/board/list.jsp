<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../_header.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	String group = request.getParameter("group");
	String asideFile = "./_aside_"+group+".jsp";
%>
<jsp:include page="<%= asideFile %>.jsp"></jsp:include>
        <section id="board" class="list">
            <h3>글목록</h3>
            <article>
                <p>
					홍길동님 반갑습니다.
                    <a href="/Jboard1/user/proc/logout.jsp" class="logout">[로그아웃]</a>
                </p>
                <table border="0">
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>글쓴이</th>
                        <th>날짜</th>
                        <th>조회</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><a href="#">제목입니다.</a>&nbsp;[3]</td>
                        <td>길동</td>
                        <td>20-06-23</td>
                        <td>12</td>
                    </tr>
                 
                </table>
            </article>

            <!-- 페이지 네비게이션 -->
            <div class="paging">
                <a href="#" class="prev">이전</a>
                <a href="#" class="num current">i</a>                
                <a href="#" class="next">다음</a>
            </div>

            <!-- 글쓰기 버튼 -->
            <a href="./write.jsp?group=<%= group %>" class="btnWrite">글쓰기</a>
		
        </section>

  <%@ include file="../_footer.jsp" %>