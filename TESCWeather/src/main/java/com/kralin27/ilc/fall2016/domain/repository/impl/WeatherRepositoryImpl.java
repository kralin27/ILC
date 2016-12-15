package com.kralin27.ilc.fall2016.domain.repository.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.kralin27.ilc.fall2016.domain.Timestamp;
import com.kralin27.ilc.fall2016.domain.WeatherReading;
import com.kralin27.ilc.fall2016.domain.WeatherReadingsSummary;
import com.kralin27.ilc.fall2016.domain.repository.WeatherRepository;

@Repository
public class WeatherRepositoryImpl implements WeatherRepository{
	
	@Autowired
	private NamedParameterJdbcTemplate jdbcTemplate;
	
	// An interface used by JdbcTemplate for mapping rows of a ResultSet on a per-row basis. 
	// Implementations of this interface perform the actual work of mapping each row to a result object
	private static final class WeatherReadingMapper implements RowMapper<WeatherReading> {
		public WeatherReading mapRow(ResultSet rs, int rowNum) throws SQLException {
	    	 WeatherReading weatherReading = new WeatherReading();
	    	 weatherReading.setId(rs.getInt("id"));
	    	 weatherReading.setTimestamp(rs.getString("timestamp"));
	    	 weatherReading.setRecord_num(rs.getDouble("record_num"));
	    	 weatherReading.setAir_temp_c_max(rs.getDouble("air_temp_c_max"));
	    	 weatherReading.setAir_temp_c_min(rs.getDouble("air_temp_c_min"));	
	    	 weatherReading.setAir_temp_c_avg(rs.getDouble("air_temp_c_avg"));
	    	 weatherReading.setRel_hum_avg(rs.getDouble("rel_hum_avg"));
	    	 weatherReading.setRel_hum_max(rs.getDouble("rel_hum_max"));
	    	 weatherReading.setRel_hum_min(rs.getDouble("rel_hum_min"));
	    	 weatherReading.setWind_speed_ms_max(rs.getDouble("wind_speed_ms_max"));
	    	 weatherReading.setWind_speed_avg(rs.getDouble("wind_speed_avg"));
	    	 weatherReading.setWind_dir_avg(rs.getDouble("wind_dir_avg"));
	    	 weatherReading.setSolar_rad_w_avg(rs.getDouble("solar_rad_w_avg"));
	    	 weatherReading.setSolar_rad_w_max(rs.getDouble("solar_rad_w_max"));
	    	 weatherReading.setRain_mm_total(rs.getDouble("rain_mm_total"));
	    	 weatherReading.setDew_point_c_max(rs.getDouble("dew_point_c_max"));
	    	 weatherReading.setDew_point_c_min(rs.getDouble("dew_point_c_min"));
	    	 weatherReading.setWind_chill_c_max(rs.getDouble("wind_chill_c_max"));
	    	 weatherReading.setWind_chill_c_min(rs.getDouble("wind_chill_c_min"));
	    	 weatherReading.setHeat_index_c_max(rs.getDouble("heat_index_c_max"));
	    	 weatherReading.setHeat_index_c_min(rs.getDouble("heat_index_c_min"));
	    	 weatherReading.setEtrs_mm_total(rs.getDouble("etrs_mm_total"));
	    	 weatherReading.setRso(rs.getDouble("rso"));
	    	 weatherReading.setCreated_at(rs.getString("created_at"));
	    	 weatherReading.setUpdated_at(rs.getString("updated_at"));
	    	 return weatherReading;
		}
	}	
    
	private static final class WeatherReadingsSummaryMapper implements RowMapper<WeatherReadingsSummary> {
		public WeatherReadingsSummary mapRow(ResultSet rs, int rowNum) throws SQLException {
			WeatherReadingsSummary weatherReadingsSummary = new WeatherReadingsSummary();
				weatherReadingsSummary.setReadingsCount(rs.getInt("ReadingsCount"));
				weatherReadingsSummary.setReadingFirst(rs.getString("ReadingFirst"));
				weatherReadingsSummary.setReadingLast(rs.getString("ReadingLast"));
				weatherReadingsSummary.setMissingReadingCount(rs.getInt("MissingReadingCount"));
	    	 return weatherReadingsSummary;
		}
	}		
	
	private static final class TimestampMapper implements RowMapper<Timestamp>{
		public Timestamp mapRow(ResultSet rs, int rowNum) throws SQLException {
			Timestamp timestamp = new Timestamp();
			timestamp.setTimestamp(rs.getString("Date"));
			timestamp.setCount(rs.getInt("Count"));
			return timestamp;
		}
	}
	
	private static final class TimestampDetailMapper implements RowMapper<Timestamp>{
		public Timestamp mapRow(ResultSet rs, int rowNum) throws SQLException {
			Timestamp timestamp = new Timestamp(); 
			timestamp.setTimestamp(rs.getString("timestamp")); 
			return timestamp; 
		}
	}
	
	
	@Override
	public Integer getRecordCount() {
		Map<String, Object> params = new HashMap<String, Object>();
		//no parameters required in the query but queryForObject requires a Map anyway
		int recordCount = jdbcTemplate.queryForObject("select count(*) from tblWeatherReading",params, Integer.class);
   
		return recordCount;
	}
	
	@Override
	public WeatherReading getWeatherReadingById(Integer id) {
    	String SQL = "CALL prcWeatherReading(:id)";  
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);

		return jdbcTemplate.queryForObject(SQL, params, new WeatherReadingMapper());		
	}
	
    @Override
    public List<WeatherReading> getWeatherReadingsByDate(String date) {
    	String SQL = "CALL prcWeatherReadingsDate(:date)";  
    	
    	Map<String, Object> params = new HashMap<String, Object>();
    	params.put("date", date);

    	return jdbcTemplate.query(SQL, params, new WeatherReadingMapper());
   }

    @Override
    public List<WeatherReading> getWeatherReadingsByMeasure(String measure, Integer records) {
    	String SQL = "CALL prcWeatherReadingsMeasure(:measure, :records)";  
    	
    	Map<String, Object> params = new HashMap<String, Object>();
    	params.put("measure", measure);
    	params.put("records", records);
    	
    	return jdbcTemplate.query(SQL, params, new WeatherReadingMapper());
   } 
     
	@Override
	public WeatherReadingsSummary getWeatherReadingsSummary() {
    	String SQL = "CALL prcWeatherReadingsSummary()";  
		
		Map<String, Object> params = new HashMap<String, Object>();

		return jdbcTemplate.queryForObject(SQL, params, new WeatherReadingsSummaryMapper());		
	}    
	
	@Override 
	public List<Timestamp> getWeatherReadingMissing(){
		String SQL = "CALL prcWeatherReadingsMissingList()"; 
		Map<String, Object> params = new HashMap<String,Object>();
		return jdbcTemplate.query(SQL, params, new TimestampMapper());
	}

	@Override
	public List<Timestamp> getWeatherReadingMissingDetail(String date) {
		String SQL = "CALL prcWeatherReadingsMissingListDetail(:date)";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("date", date);
		return jdbcTemplate.query(SQL, params, new TimestampDetailMapper()); 
	}
    
}


