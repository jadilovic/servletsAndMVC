package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.User;

/**
 * Servlet implementation class MVCServletController
 */
@WebServlet("/MVCServletController")
public class MVCServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MVCServletController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action == null){
			request.getRequestDispatcher("/homePage.jsp").forward(request, response);
		} else if(action.equals("login")){
			request.setAttribute("email", "Enter email here");
			request.setAttribute("password", "Enter password here");
			request.setAttribute("validationmessage", "");
			request.getRequestDispatcher("/formInput.jsp").forward(request, response);
		}
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		if(action == null){
			request.getRequestDispatcher("/homePage.jsp").forward(request, response);
		} else if(action.equals("dologin")){
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			request.setAttribute("email", email);
			request.setAttribute("password", password);
			
			User user = new User(email, password);
			
			if(user.validate()){
				request.getRequestDispatcher("/loginSuccess.jsp").forward(request, response);
			} else {
				request.setAttribute("validationmessage", user.getMessage());
				request.getRequestDispatcher("/formInput.jsp").forward(request, response);
			}
		}
	}

}
