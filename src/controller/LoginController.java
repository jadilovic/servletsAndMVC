package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.User;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action == null){
			request.getRequestDispatcher("/form.jsp").forward(request, response);
		} else if(action.equals("filledForm")){
			request.getRequestDispatcher("/form.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		if(action == null){
			request.getRequestDispatcher("/form.jsp").forward(request, response);
		} else if(action.equals("filledForm")){
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			request.setAttribute("email", email);
			request.setAttribute("password", password);
			
			User user = new User(email, password);
			
			if(user.validate()){
				request.getRequestDispatcher("/success.jsp").forward(request, response);
			} else {
				String message = user.getMessage();
				request.setAttribute("message", message);
				request.getRequestDispatcher("/form.jsp").forward(request, response);
			}
		}
	}

}
