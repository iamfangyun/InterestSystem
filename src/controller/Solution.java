package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.StringUtil;
import bean.Activity;
import bean.Post;
import bean.User;
import dao.ActivityDao;
import dao.PostDao;
import dao.UserDao;
/**
 * Solution类是一个策略类，被Handler调用
 * Handler通过获取request中parameter中的method参数，
 * 调用对应的策略方法
 * @author gaoshou
 *
 */
public class Solution {
	/**
	 * 实现登录功能
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
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
	
	/**
	 * 实现获取相似好友的功能
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void doSimiliarFriends(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserDao userDao = new UserDao();
		//Get session userId
		int userid;
		User user =  (User) request.getSession().getAttribute("user");
		userid  = user.getId();
		//Get the highest of similarity
		int highestUser;
		if(userid == 1){
			highestUser = userid + 2;
		}
		else{
			highestUser = (int)userid/2;
		}
		List<User> highestuser = userDao.doHighestSimilarityFriends(userid, highestUser);
		
		//Get high rate of similarity 
		int[] HighUser = getHighSimiliarfriend(userid);
		List<User> highList = userDao.doSimiliarFriends(HighUser,userid,highestUser);
		
		//Get partialy of similarity
		int[] PartUsers = getPartSimiliarfriend(userid);
		List<User> partList = userDao.doSimiliarFriends(PartUsers,userid,highestUser);
		
		//Get general rate of similarity
		int[] GeneralUsers = getGeneralSimiliarfriend(userid);
		List<User> generalList = userDao.doSimiliarFriends(GeneralUsers,userid,highestUser);
		
		request.setAttribute("highestSimilarityUser",highestuser);
		request.setAttribute("highList", highList);
		request.setAttribute("partList", partList);
		request.setAttribute("generalList", generalList);
		request.getRequestDispatcher("/similiarFriends.jsp").forward(request, response);
		}
	
	private int[] getGeneralSimiliarfriend(int userid) {
		// algorithm: general similiarith friends
		int[] src = {17,18,19,20,21,22};
		int[] dest = new int[6];
		System.arraycopy(src, 0, dest, 0, 6);
		return dest;
	}


	private int[] getPartSimiliarfriend(int userid) {
		// algorithm: part similiarity friends
		int[] src = {9,10,11,12,13,14,15,16};
		int[] dest = new int[8];
		System.arraycopy(src, 0, dest, 0, 8);
		return dest;
	}


	private int[] getHighSimiliarfriend(int userid){
		//algorithm: high similiarity friends
		int[] src = {1,2,3,4,5,6,7,8};
		int[] users = new int[8];
		System.arraycopy(src, 0, users, 0, 8);
		return users;
	}

	/**
	 * 实现获取兴趣活动的功能
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void queryActivities(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActivityDao activityDao = new ActivityDao();
		int userId = ((User)request.getSession().getAttribute("user")).getId();
		List<Activity> list = activityDao.queryActivities(userId);
		request.setAttribute("activities", list);
		request.getRequestDispatcher("/activity.jsp").forward(request, response);
	}
	
	/**
	 * 实现申请加入活动页面跳转的功能
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void applyPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/application.jsp").forward(request, response);
	}
	
	/**
	 * 实现获取相似状态的功能
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void queryPosts(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PostDao postDao = new PostDao();
		int userId = ((User)request.getSession().getAttribute("user")).getId();
		List<Post> list = postDao.queryPosts(userId);
		request.setAttribute("posts", list);
		request.getRequestDispatcher("/similiarNews.jsp").forward(request, response);
	}

}
