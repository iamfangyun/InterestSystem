package dao;

import java.util.ArrayList;
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
	
	public List<User> doSimiliarFriends(int[] userId,int selfId){// after doing the similiar friends algorithm, we display the information on the similiarfriends.jsp
		StringBuffer addsql = new StringBuffer();
		
		addsql.append("(");
		addsql.append(Integer.valueOf(userId[0]));
		for(int i=1;i<userId.length;i++)
		{
			if(Integer.valueOf(userId[i]) == selfId){
				System.out.println(selfId);
			}
			else{
				addsql.append(" , "+ Integer.valueOf(userId[i]));
			}
		}
		addsql.append(")");

		String sql = "select * from user where user_id in " + addsql;
		System.out.println("sql: "+sql);
		List<User> users = new ArrayList<User>();
		List<Map<String, String>> list = DBUtil.queryListMap(sql);
		
		if(list.isEmpty())
			return null;
		
		//get the first user of data
		//Map<String, String> map = list.get(0);
		for(Map<String, String> map1 : list) {
			User user = new User();
			for(Map.Entry<String, String> element : map1.entrySet()){
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
			}
			users.add(user);
		}
		for(int i=0;i<users.size();i++){
			System.out.println(users.get(i).getUsername() + "|||||" + users.get(i).getHobby()+ "||||");
		}

		return users;
	}
	
}

