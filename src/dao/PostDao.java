package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import util.DateUtil;
import bean.Post;
/**
 * PostDao主要用于对数据库中post表进行增删改查
 * 主要被solution使用
 * @author gaoshou
 *
 */
public class PostDao {
	/**
	 * 通过userid，查询出数据库中与该userid对应的用户的相关性状态
	 * @param userId 标志正要查询兴趣活动的用户的userid
	 * @return 返回所有匹配状态的list
	 */
	public List<Post> queryPosts(int userId) {
		String sql = "select * from post,user where post.userid=user.user_id and post.userid != " + userId + ";";
		List<Post> posts = new ArrayList<Post>();
		List<Map<String, String>> list = DBUtil.queryListMap(sql);
		for (Map<String, String> map : list) {
			Post post = new Post();
			for (Map.Entry<String, String> element : map.entrySet()) {
				String key = element.getKey();
				String value = element.getValue();
				if ("post_id".equals(key))
					post.setId(Integer.valueOf(value));
				else if ("userid".equals(key))
					post.setUserId(Integer.valueOf(value));
				else if ("post_time".equals(key))
					post.setTime(DateUtil.getDatetime(value));
				else if ("post_content".equals(key))
					post.setContent(value);
				else if ("user_image".equals(key))
					post.setUserImage(value);
				else if ("user_name".equals(key))
					post.setUsername(value);
				else
					System.out.println("post 有不匹配项");
			}
			posts.add(post);
		}
		return posts;
	}
}
