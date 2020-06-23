<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String group = request.getParameter("group");
	String asideFile  = "./_aside_"+group+".jsp"; 
%>
<jsp:include page="<%= asideFile %>"></jsp:include>
<section id="board" class="write">
    <h3>글쓰기</h3>
    <article>
        <form action="#" method="post" enctype="multipart/form-data">
        	<input type="hidden" name="uid" value="" />
            <table>
                <tr>
                    <td>제목</td>
                    <td><input type="text" name="title" placeholder="제목을 입력하세요."/></td>
                </tr>
                <tr>
                    <td>내용</td>
                    <td>
                        <textarea name="content"></textarea>                                
                    </td>
                </tr>
                <tr>
                    <td>첨부</td>
                    <td><input type="file" name="file"/></td>
                </tr>
            </table>
            <div>
                <a href="./list.jsp?group=<%= group %>" class="btnCancel">취소</a>
                <input type="submit"  class="btnWrite" value="작성완료"/>
            </div>
        </form>
    </article>
</section>
			<!-- 컨텐츠 내용 끝 -->
        </div>
		<!-- content 끝 -->
        </article>
    </section>
</div>
<!-- #sub 끝 -->
  <%@ include file="../_footer.jsp" %>