package dao;

import java.util.List;
import java.util.Map;

import util.DateUtil;

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
				user.setSex(value == "1");
			else if ("user_dream".equals(key))
				user.setDream(value);
			else if ("user_motto".equals(key))
				user.setMotto(value);
			else
				System.out.println("用户的字段名不匹配");
		}
		return user;
	}
}
