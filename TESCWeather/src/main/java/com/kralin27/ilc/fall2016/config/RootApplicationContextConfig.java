package com.kralin27.ilc.fall2016.config;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.core.env.Environment;

@Configuration
@ComponentScan("com.kralin27.ilc.fall2016")
// classpath=...\src\main\resources
@PropertySource("classpath:config.properties")
public class RootApplicationContextConfig {
	@Autowired
	private Environment env;
	
	@Bean
	public DataSource getDataSource() {
		// read database connection parameters from property file : ...\src\main\resources\config.properties
		String driverClassName = env.getProperty("db.DriverClassName");
		String url = env.getProperty("db.Url");
		String username = env.getProperty("db.Username");
		String password = env.getProperty("db.Password");
		
		DriverManagerDataSource db = new DriverManagerDataSource();
		db.setDriverClassName(driverClassName);		
		db.setUrl(url);
		db.setUsername(username);
		db.setPassword(password);
		
		return db;
	}     

   @Bean
   public NamedParameterJdbcTemplate getJdbcTemplate() {
      return new NamedParameterJdbcTemplate(getDataSource());
   }
}
