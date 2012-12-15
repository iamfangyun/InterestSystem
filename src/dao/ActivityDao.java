package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import util.DateUtil;
import bean.Activity;
/**
 * ActivityDao主要用于对数据库中activity表进行增删改查
 * 主要被solution使用
 * @author gaoshou
 *
 */
public class ActivityDao {
	/**
	 * 通过userid，查询出数据库中与该userid对应的用户有关的兴趣活动
	 * @param userId 标志正要查询兴趣活动的用户的userid
	 * @return 返回所有匹配的活动的list
	 */
	public List<Activity> queryActivities(int userId) {
		String sql = "select * from activity,user where activity.user_id=user.user_id and activity.user_id != " + userId + ";";
		List<Activity> activities = new ArrayList<Activity>();
		List<Map<String, String>> list = DBUtil.queryListMap(sql);
		for (Map<String, String> map : list) {
			Activity activity = new Activity();
			for (Map.Entry<String, String> element : map.entrySet()) {
				String key = element.getKey();
				String value = element.getValue();
				if ("activity_id".equals(key))
					activity.setId(Integer.valueOf(value));
				else if ("user_id".equals(key))
					activity.setUserId(Integer.valueOf(value));
				else if ("activity_title".equals(key))
					activity.setTitle(value);
				else if ("activity_begintime".equals(key))
					activity.setBeginTime(DateUtil.getDatetime(value));
				else if ("activity_endtime".equals(key))
					activity.setEndTime(DateUtil.getDatetime(value));
				else if ("activity_content".equals(key))
					activity.setContent(value);
				else if ("activity_islegal".equals(key))
					activity.setLegal(value == "1");
				else if ("activity_stutas".equals(key))
					activity.setStatus(Integer.valueOf(value));
				else if ("user_image".equals(key))
					activity.setUserImage(value);
				else if ("user_name".equals(key))
					activity.setUsername(value);
				else
					System.out.println("activity 有不匹配项");
			}
			activities.add(activity);
		}
		return activities;
	}
}
