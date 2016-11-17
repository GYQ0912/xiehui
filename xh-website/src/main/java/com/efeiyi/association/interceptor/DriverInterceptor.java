package com.efeiyi.association.interceptor;

import com.ming800.core.util.HttpUtil;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Administrator on 2016/4/12.
 */
public class DriverInterceptor extends HandlerInterceptorAdapter {
    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response, Object o, ModelAndView mv)
            throws Exception {
        if (mv != null && mv.getViewName() != null && !mv.getViewName().startsWith("redirect") && !mv.getViewName().startsWith("forward")) {

            if (!HttpUtil.isPhone(request.getHeader("User-Agent"))) {
                mv.setViewName("/pc/" + mv.getViewName());
            } else {
                mv.setViewName("/wap/" + mv.getViewName());
            }
        }
        response.setHeader("X-Frame-Options","");
    }


    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");

        return true;
    }
}
