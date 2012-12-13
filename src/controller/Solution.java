package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.StringUtil;
import bean.Activity;
import bean.User;
import dao.ActivityDao;
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
				request.getSession().setAttribute("user", user);
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
	
	public void queryActivities(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActivityDao activityDao = new ActivityDao();
		List<Activity> list = activityDao.queryActivities();
		request.setAttribute("activityList", list);
		request.getRequestDispatcher("/activity.jsp").forward(request, response);
	}
	
}
