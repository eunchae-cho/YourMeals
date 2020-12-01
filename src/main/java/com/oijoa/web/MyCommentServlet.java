package com.oijoa.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.oijoa.domain.Recipe;
import com.oijoa.domain.User;
import com.oijoa.service.CommentService;

@WebServlet("/mypage/mycomment/list")
public class MyCommentServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    ServletContext ctx = request.getServletContext();
    CommentService commentService = (CommentService) ctx.getAttribute("commentService");

    HttpSession session = request.getSession();

    response.setContentType("text/html;charset=UTF-8");
    PrintWriter out = response.getWriter();

    out.println("<!DOCTYPE html>");
    out.println("<html>");
    out.println("<head><title>MyPage</title></head>");
    out.println("<body>");
    try {
      out.println("<h1>[My Recipe 목록]</h1>");

      // 로그인부분 추가 => Mapper findMy uno(=1) 고정부분 수정해야함.
      User loginUser = (User) session.getAttribute("loginUser");

      List<Recipe> list = commentService.myList(loginUser.getUserNo());

      out.println("<table border='1'><tr>"
          + "<th>번호</th>"
          + "<th>제목</th>"
          + "<th>사진</th>"
          + "<th>등록일</th></tr>");

      for (Recipe recipe : list) {
        out.printf("<tr>"
            + "<td>%d</td>"
            + "<td>%s</td>"
            + "<td>%s</td>"
            + "<td>%s</td>"
            + "</tr>\n",
            recipe.getRecipeNo(),
            recipe.getTitle(),
            recipe.getPhoto(),
            recipe.getCreatedDate());
      }
      out.println("</table></body></html>");
    } catch (Exception e) {
      out.println("<h2>작업 처리 중 오류 발생!</h2>");
      out.printf("<pre>%s</pre>\n", e.getMessage());

      StringWriter errOut = new StringWriter();
      e.printStackTrace(new PrintWriter(errOut));
      out.println("<h3>상세 오류 내용</h3>");
      out.printf("<pre>%s</pre>\n", errOut.toString());
    }
    out.println("</body>");
    out.println("</html>");
  }
}