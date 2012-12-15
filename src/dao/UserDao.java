package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import util.DateUtil;
import bean.User;
/**
 * UserDao主要用于对数据库中user表进行增删改查
 * 主要被solution使用
 * @author gaoshou
 *
 */
public class UserDao {
	/**
	 * 通过用户名和密码，查询是否有这个用户，若有则返回此用户
	 * 若无，则返回null
	 * @param username 用户名
	 * @param password 密码
	 * @return 返回与用户名和密码匹配的用户
	 */
	public User doLogin(String username, String password) {
		String sql = "select * from user where user_name = '" + username
				+ "' and user_password = '" + password + "'";
		List<Map<String, String>> list = DBUtil.queryListMap(sql);
		if(list.isEmpty())
			return null;
		User user = new User();
		//get the first row of data
		Map<String, String> map = list.get(0);
		for (Map.Entry<String, String> element : map.entrySet()) {
			String key = element.getKey();
			String value = element.getValue();
			if ("user_id".equals(key))
				user.setId(Integer.valueOf(value));
			else if ("user_password".equals(key))
				user.setPassword(value);
			else if ("user_name".equals(key))
				user.setUsername(value);
			else if ("user_email".equals(key))
				user.setEmail(value);
			else if ("user_birthday".equals(key))
				user.setBirthday(DateUtil.getDate(value));
			else if ("user_address".equals(key))
				user.setAddress(value);
			else if ("user_university".equals(key))
				user.setUniversity(value);
			else if ("user_hometown".equals(key))
				user.setHometown(value);
			else if ("user_hobby".equals(key))
				user.setHobby(value);
			else if ("user_major".equals(key))
				user.setMajor(value);
			else if ("user_sex".equals(key))
				user.setSex(value.charAt(0));
			else if ("user_dream".equals(key))
				user.setDream(value);
			else if ("user_motto".equals(key))
				user.setMotto(value);
			else if ("user_image".equals(key))
				user.setImage(value);
			else
				System.out.println("用户的字段名不匹配");
		}
		return user;
	}
	
	/**
	 * 获取相似用户的信息
	 * @param userId 需查询的所有用户id
	 * @param selfId 当前用户id
	 * @param highestUser 相似度最高用户id
	 * @return
	 */
	public List<User> doSimiliarFriends(int[] userId,int selfId,int highestUser) {
		//Get a group of users.
		StringBuffer addsql = new StringBuffer();
		addsql.append("(" + userId[0]);
		for (int eachId : userId) {
			if (eachId == selfId || eachId == highestUser || eachId == userId[0]) {
				continue;
			}
			addsql.append("," + eachId);
		}
		addsql.append(")");
		String sql = "select * from user where user_id in " + addsql;
		System.out.println("sql: " + sql);

		List<User> users = new ArrayList<User>();
		List<Map<String, String>> list = DBUtil.queryListMap(sql);

		if (list.isEmpty())
			return null;

		for (Map<String, String> map1 : list) {
			User user = new User();
			for (Map.Entry<String, String> element : map1.entrySet()) {
				String key = element.getKey();
				String value = element.getValue();
				if ("user_id".equals(key))
					user.setId(Integer.valueOf(value));
				else if ("user_name".equals(key))
					user.setUsername(value);
				else if ("user_birthday".equals(key))
						user.setBirthday(DateUtil.getDate(value));
				else if ("user_hobby".equals(key))
					user.setHobby(value);
				else if ("user_image".equals(key))
					user.setImage(value);
			}
			users.add(user);
		}
		return users;
	}
	
	/**
	 * 获得所有较高相似度好友的详细信息
	 * @param selfId 当前用户id
	 * @param highestId 所有较高相似度好友id
	 * @return
	 */
	public List<User> doHighestSimilarityFriends(int selfId, int highestId) {
		//Get the highestsimilarityfriend for all users
				String sql = "select * from user where user_id = " + highestId;
				List<User> users = new ArrayList<User>();
				List<Map<String, String>> list = DBUtil.queryListMap(sql);
				
				for (Map<String, String> map1 : list) {
					User user = new User();
					for (Map.Entry<String, String> element : map1.entrySet()) {
						String key = element.getKey();
						String value = element.getValue();
						if ("user_id".equals(key))
							user.setId(Integer.valueOf(value));
						else if ("user_name".equals(key))
							user.setUsername(value);
						else if ("user_hobby".equals(key))
							user.setHobby(value);
						else if ("user_image".equals(key))
							user.setImage(value);
						else if ("user_hometown".equals(key))
							user.setHometown(value);
						else if ("user_sex".equals(key))
							user.setSex(value.charAt(0));
					}
					users.add(user);
				}
				return users;
	}
	
}

