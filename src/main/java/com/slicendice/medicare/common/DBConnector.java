/**
 * 
 */
package com.slicendice.medicare.common;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

/**
 * @author Rahul
 *
 */
public class DBConnector {

	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;
	   
	   public void setDataSource(DataSource dataSource) {
	      this.dataSource = dataSource;
	      this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	   }

	public JdbcTemplate getJdbcTemplateObject() {
		return jdbcTemplateObject;
	}
	

}
