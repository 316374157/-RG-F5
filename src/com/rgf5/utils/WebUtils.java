package com.rgf5.utils;

import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

;

/**
 * @ClassName WebUtils 前端工具类
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/20
 * @Version V1.0
 **/
public class WebUtils {

    public static <T> T paramsToBean(HttpServletRequest request,T bean){
        try {
            Map<String, String[]> map = request.getParameterMap();
            BeanUtils.populate(bean, map);
        }catch (Exception e){
            e.printStackTrace();
        }

        return bean;
    }
}
