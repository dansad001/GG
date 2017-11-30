package Control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Model;
import Model.userBean;
import Service.LoginDAO;




/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		try {
			Model bean = new Model();

			String userName = (String) request.getParameter("un");
			String passworduser = (String) request.getParameter("pw");
			Model userBean = LoginDAO.login(userName, passworduser);
			String page;
			
			if (userBean != null ) {

				HttpSession session = request.getSession(true);
				session.setAttribute("currentUser", userBean);

				String name= userBean.getName();
				request.setAttribute("name", name);
				int uid = userBean.getUid();
				request.setAttribute("uid", uid);
				System.out.println(uid);

				response.getWriter().append("Served at: ").append(request.getContextPath());
				//1) เน€เธฃเธตเธขเธ�เน�เธ�เน�เธ�เธฒเธ� method โ€�getAllCategory()โ€�
				String Status = userBean.getStatus();
				//request.setAttribute
				//3) Forward เธ�เน�เธญเธกเธนเธฅเน�เธ�เธซเธ�เน�เธฒ JSP เธชเน�เธฒเธซเธฃเธฑเธ�เน�เธชเธ”เธ�เธ�เน�เธญเธกเธนเธฅเธ�เธฃเธฐเน€เธ เธ—เธชเธดเธ�เธ�เน�เธฒเธ—เธฑเน�เธ�เธซเธกเธ” [ categorylist.jsp ]
				if(Status.equals("admin")) {
					

					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AdminServlet");
					if (dispatcher != null) {
						dispatcher.forward(request, response);
					}
				}else {
					
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/user.jsp");
					if (dispatcher != null) {
						dispatcher.forward(request, response);
					}
				}
				

					
			} else {
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/invalidLogin.jsp");
				if (dispatcher != null) {
					dispatcher.forward(request, response);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
	

}
