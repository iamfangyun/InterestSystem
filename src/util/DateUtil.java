package util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/**
 * 用于转换日期格式的常用工具类
 * @author gaoshou
 *
 */
public class DateUtil {
	/**
	 * 将格式为yyyy-MM-dd hh:mm:ss的字符串格式的日期
	 * 转换成Date类型
	 * @param date 字符串类型的datetime
	 * @return 转换成功后的Date，不成功则返回null
	 */
	public static Date getDatetime(String date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date result = null;
		try {
			result = sdf.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return result;
	}
	/**
	* 将格式为yyyy-MM-dd的字符串格式的日期
	 * 转换成Date类型
	 * @param date 字符串类型的date
	 * @return 转换成功后的Date，不成功则返回null
	 */
	public static Date getDate(String date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date result = null;
		try {
			result = sdf.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return result;
	}
	/**
	 * 将日期转成字符串类型，格式为yyyy-MM-dd hh:mm:ss
	 * @param date
	 * @return
	 */
	public static String toStr(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		return sdf.format(date);
	}
}
