package util;

import javax.servlet.Filter;
import javax.servlet.FilterConfig;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.FilterChain;

/**
 * <p>Title: ×Ö·û¼¯×ªÂë¹ýÂËÆ÷</p>
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
