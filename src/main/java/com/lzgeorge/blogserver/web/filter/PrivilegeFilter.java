package com.lzgeorge.blogserver.web.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by admin on 2017/5/10.
 */

/*使用了web.xml配置的filter*/
public class PrivilegeFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        servletRequest.setCharacterEncoding("utf-8");
        String url = ((HttpServletRequest) servletRequest).getServletPath();

        filterChain.doFilter(servletRequest, servletResponse);

        //被拦截
        /*noPrivilege(servletResponse);*/
    }

    public void destroy() {

    }

    public void noPrivilege(ServletResponse servletResponse) throws IOException {
        servletResponse.setCharacterEncoding("utf-8");
        servletResponse.setContentType("application/json");
        PrintWriter pw = servletResponse.getWriter();
        pw.write("无权访问！");
        pw.flush();
        pw.close();
    }
}
