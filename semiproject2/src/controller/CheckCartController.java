package controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberVO;
import model.MockDAO;

public class CheckCartController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String pno=request.getParameter("pno"); 
		MemberVO mvo = MockDAO.getInstance().createMember(); //세션으로부터 member정보를 받아온다.
		int index=mvo.getCart().findIndexByNo(Integer.parseInt(pno)); //카트에 있는지 없는지 검사한다.
		PrintWriter out = response.getWriter();
		out.print(index);
		out.close();
		return "Ajax";
	}

}
