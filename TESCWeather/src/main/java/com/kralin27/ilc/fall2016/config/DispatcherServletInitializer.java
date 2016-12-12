package com.kralin27.ilc.fall2016.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class DispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

     @Override
     protected Class<?>[] getRootConfigClasses() {
         return new Class[] { RootApplicationContextConfig.class };
     }

     @Override
     protected Class<?>[] getServletConfigClasses() {
          return new Class[] { WebApplicationContextConfig.class };
     }

     @Override
     protected String[] getServletMappings() {
    	  // this dispatcher servlet will handle all requests to /TESCWeather
          return new String[] { "/" };
     }
}
