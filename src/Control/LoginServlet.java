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

import Bean.userBean;
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
			userBean bean = new userBean();

			String userName = (String) request.getParameter("un");
			String passworduser = (String) request.getParameter("pw");
			userBean userBean = LoginDAO.login(userName, passworduser);
			String page;
			
			if (userBean != null ) {

				HttpSession session = request.getSession(true);
				session.setAttribute("currentUser", userBean);

				String name= userBean.getName();
				session.setAttribute("name", name);
				request.setAttribute("name", name);
				int uid = userBean.getUid();
				session.setAttribute("uid", uid);
				request.setAttribute("uid", uid);
				System.out.println(uid);
				String stdid= userBean.getStdid();
				session.setAttribute("stdid", stdid);

				response.getWriter().append("Served at: ").append(request.getContextPath());
				//1) à¹€à¸™â‚¬à¹€à¸˜à¸ƒà¹€à¸˜à¸•à¹€à¸˜à¸‚à¹€à¸˜ï¿½à¹€à¸™ï¿½à¹€à¸˜ï¿½à¹€à¸™ï¿½à¹€à¸˜ï¿½à¹€à¸˜à¸’à¹€à¸˜ï¿½ method à¹‚â‚¬ï¿½getAllCategory()à¹‚â‚¬ï¿½
				String Status = userBean.getStatus();
				//request.setAttribute
				//3) Forward à¹€à¸˜ï¿½à¹€à¸™ï¿½à¹€à¸˜à¸�à¹€à¸˜à¸�à¹€à¸˜à¸™à¹€à¸˜à¸…à¹€à¸™ï¿½à¹€à¸˜ï¿½à¹€à¸˜à¸‹à¹€à¸˜ï¿½à¹€à¸™ï¿½à¹€à¸˜à¸’ JSP à¹€à¸˜à¸Šà¹€à¸™ï¿½à¹€à¸˜à¸’à¹€à¸˜à¸‹à¹€à¸˜à¸ƒà¹€à¸˜à¸‘à¹€à¸˜ï¿½à¹€à¸™ï¿½à¹€à¸˜à¸Šà¹€à¸˜â€�à¹€à¸˜ï¿½à¹€à¸˜ï¿½à¹€à¸™ï¿½à¹€à¸˜à¸�à¹€à¸˜à¸�à¹€à¸˜à¸™à¹€à¸˜à¸…à¹€à¸˜ï¿½à¹€à¸˜à¸ƒà¹€à¸˜à¸�à¹€à¸™â‚¬à¹€à¸˜Â à¹€à¸˜â€”à¹€à¸˜à¸Šà¹€à¸˜à¸”à¹€à¸˜ï¿½à¹€à¸˜ï¿½à¹€à¸™ï¿½à¹€à¸˜à¸’à¹€à¸˜â€”à¹€à¸˜à¸‘à¹€à¸™ï¿½à¹€à¸˜ï¿½à¹€à¸˜à¸‹à¹€à¸˜à¸�à¹€à¸˜â€� [ categorylist.jsp ]
				if(Status.equals("admin")) {
					

					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AdminServlet");
					if (dispatcher != null) {
						dispatcher.forward(request, response);
					}
				}else {
					
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/rule.jsp");
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
