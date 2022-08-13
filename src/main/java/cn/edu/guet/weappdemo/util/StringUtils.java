package cn.edu.guet.weappdemo.util;

/**
 * 字符串工具类
 *
 * @Author Liwei
 * @Date 2021-08-10 09:26
 */
public class StringUtils {

    /**
     * 判空操作
     *
     * @param value
     * @return
     */
    public static boolean isBlank(String value) {
        return value == null || "".equals(value) || "null".equals(value) || "undefined".equals(value);
    }

}
