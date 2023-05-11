package cn.techtutorial.servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;


import cn.techtutorial.connection.DbCon;
import cn.techtutorial.dao.DAO;
import cn.techtutorial.dao.UserDao;
import cn.techtutorial.model.Account;
import cn.techtutorial.model.User;

@WebServlet("/user-login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			String email = request.getParameter("email");
			String password = request.getParameter("password");

			cn.techtutorial.dao.DAO  dao= new DAO();
			Account a = dao.login(email, password);
			if (a==null) {
				request.setAttribute("mess","Wrong user or pass");
				request.getRequestDispatcher("login.jsp").forward(request, response);;
			}else {
				request.getSession().setAttribute("auth", a);
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
