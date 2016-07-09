package de.mamsell.server.config;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import de.mamsell.server.service.UserService;
import de.mamsell.server.service.UserServiceImpl;

@Configuration // Marks this class as configuration
// Specifies which package to scan
@ComponentScan("de.mamsell.server")
// Enables Spring's annotations
@EnableWebMvc
public class Config extends WebMvcConfigurerAdapter {
//	private static final Logger log = Logger.getLogger(Config.class);
	
	@Bean
	public UrlBasedViewResolver setupViewResolver() {
		// JSP configuration
		UrlBasedViewResolver resolver = new UrlBasedViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		resolver.setViewClass(JstlView.class);
		
		return resolver;
	}
	
	
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
    	// add routes to asset resources
        registry.addResourceHandler("/css/**").addResourceLocations("/static/css/").setCachePeriod(31556926);
        registry.addResourceHandler("/img/**").addResourceLocations("/static/img/").setCachePeriod(31556926);
        registry.addResourceHandler("/js/**").addResourceLocations("/static/js/").setCachePeriod(31556926);
        registry.addResourceHandler("/fonts/**").addResourceLocations("/static/fonts/").setCachePeriod(31556926);
        
    }
 
    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }
  
    @Bean
    public InternalResourceViewResolver getInternalResourceViewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/pages/");
        resolver.setSuffix(".jsp");
		resolver.setViewClass(JstlView.class);

        return resolver;
    }
    
    // Initialize UserService Bean
    @Bean	
    public UserService userService(){
 	   return new UserServiceImpl();
    }
}