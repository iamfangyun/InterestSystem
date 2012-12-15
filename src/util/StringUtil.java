package util;
/**
 * 常用于处理字符串的工具类
 * @author gaoshou
 *
 */
public class StringUtil {
	/**
	 * 判断字符串是否为空，包括null和“”两种情况
	 * @param s 要判断的字符串
	 * @return
	 */
	public static boolean isEmpty(String s) {
		if (s == null || "".equals(s))
			return true;
		return false;
	}
}
