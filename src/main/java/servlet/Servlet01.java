package servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.UserVo;

@WebServlet("/01")
public class Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		표현할 데이터 속성으로 설정 -> jsp에서 받아와서 jsp, EL 출력
		int iValue = 2024;
		double fValue = Math.PI;
		String sValue = "Hello Woochan!";
		boolean bValue = true;
		Object nValue = null;
		
		UserVo vo = new UserVo();
		vo.setNo(100);
		vo.setEmail("hammeri@naver.com");
//		vo.setName("정우찬");
//		vo.setPassword("himedia");
//		vo.setGender("M");
		
//		요청 속성에 데이터 설정
		request.setAttribute("iVal", iValue);
		request.setAttribute("fVal", fValue);
		request.setAttribute("sVal", sValue);
		request.setAttribute("bVal", bValue);
		request.setAttribute("nVal", nValue);
		
		request.setAttribute("userVo", vo);
		
//		JSP로 forwarding
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/01.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
	}

}
