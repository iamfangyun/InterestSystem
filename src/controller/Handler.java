package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Handler类是专门用于处理浏览器客户端请求的servlet
 * 通过提交给Handler的参数method来判定调用具体的解决方案Solution类
 * @see Solution
 */
public class Handler extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Solution solution = new Solution();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Handler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		if ("login".equals(method))
			solution.doLogin(request, response);
		else if ("similiarfriends".equals(method))
			solution.doSimiliarFriends(request, response);
		else if ("applypage".equals(method))
			solution.applyPage(request, response);
		else if ("queryactivities".equals(method))
			solution.queryActivities(request, response);
		else if ("queryposts".equals(method))
			solution.queryPosts(request, response);
	}

}
