package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.StringUtil;
import bean.User;
import dao.UserDao;

public class Solution {
	
	public void doLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String page = "/login.jsp";
		String error = "";
		if (!StringUtil.isEmpty(username) && !StringUtil.isEmpty(password)) {
			UserDao userDao = new UserDao();
			User user = userDao.doLogin(username, password);
			if (user !=null) {
				request.getSession().setAttribute("userid", user.getId());
				request.setAttribute("user", user);
				page = "/homepage.jsp";
			} else {
				error = "user can not be found";
			}
		} else {
			error = "password and username can not be empty";
		}
		request.setAttribute("error", error);
		request.getRequestDispatcher(page).forward(request, response);
	}
	
	public void doSimiliarFriends(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		int userid;
		int[] returnedUserid;
		UserDao userDao = new UserDao();
		userid =  (int) request.getSession().getAttribute("userid");
		returnedUserid = getSimiliarfriend(userid);
		User user = userDao.doSimiliarFriends(returnedUserid);
		
		
	}
	
	public int[] getSimiliarfriend(int userid){//algorithm: similiarfriends
		int[] src = {1,2,3,4,5,6};
		int[] users = new int[6];
		System.arraycopy(src, 0, users, 0, 6);
		return users;
	}
}
