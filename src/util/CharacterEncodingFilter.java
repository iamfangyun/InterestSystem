package util;

import javax.servlet.Filter;
import javax.servlet.FilterConfig;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.FilterChain;

/**
 * 用于将所有请求转换成系统当前使用的编码的过滤器
 * @author gaoshou
 *
 */
public class CharacterEncodingFilter
    implements Filter {
  public CharacterEncodingFilter() {
  }

  public void init(FilterConfig parm1) throws javax.servlet.ServletException {
    return;
  }

  public void doFilter(ServletRequest request, ServletResponse response,
                       FilterChain chain) throws java.io.IOException,
      javax.servlet.ServletException {
    request.setCharacterEncoding("UTF-8");
    chain.doFilter(request, response);
  }

  public void destroy() {
    return;
  }
}
