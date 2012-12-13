package dao;

import java.util.List;
import java.util.Map;

import bean.User;

public class UserDao {
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
			else if ("user_name".equals(key))
				user.setUsername(value);
			else if ("user_password".equals(key))
				user.setPassword(value);
			else if ("user_email".equals(key))
				user.setEmail(value);
			else if ("user_address".equals(key))
				user.setAddress(value);
			else if ("user_university".equals(key))
				user.setUniversity(value);
			else
				System.out.println("用户的字段名不匹配");
		}
		return user;
	}
	
	public User doSimiliarFriends(int[] userId){// after doing the similiar friends algorithm, we display the information on the similiarfriends.jsp
		StringBuffer addsql = new StringBuffer(userId[0]);
		for(int i=0;i<userId.length;i++)
		{
			addsql.append("or"+Integer.valueOf(userId[i]));
		}

		String sql = "select * from user where user_id = " + addsql;
		List<Map<String, String>> list = DBUtil.queryListMap(sql);
		if(list.isEmpty())
			return null;
		User user = new User();
		//get the first user of data
		Map<String, String> map = list.get(0);
		for(Map.Entry<String, String> element : map.entrySet()){
			String key = element.getKey();
			String value = element.getValue();
			if ("user_id".equals(key))
				user.setId(Integer.valueOf(value));
			else if ("user_name".equals(key))
				user.setUsername(value);
			else if ("user_hobby".equals(key))
				user.setHobby(value);
			else
				System.out.println("找不到任何匹配用户");
		}
		return user;
	}
}

