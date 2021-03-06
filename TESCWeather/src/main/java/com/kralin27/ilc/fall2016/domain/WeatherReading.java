package com.kralin27.ilc.fall2016.domain;

import java.math.BigDecimal;

public class WeatherReading {
	// instance variable
	private int id;
	private String timestamp;
	private double record_num;
	private double air_temp_c_avg;
	private double air_temp_c_max;	
	private double air_temp_c_min;	
	private double rel_hum_avg;
	private double rel_hum_max;
	private double rel_hum_min;
	private double wind_speed_ms_max;
	private double wind_speed_avg; 
	private double wind_dir_avg;
	private double solar_rad_w_avg;
	private double solar_rad_w_max;
	private double rain_mm_total;
	private double dew_point_c_min;
	private double dew_point_c_max;
	private double wind_chill_c_max;
	private double wind_chill_c_min;
	private double heat_index_c_max;
	private double heat_index_c_min;
	private double etrs_mm_total; 
	private double rso;
	private String created_at;
	private String updated_at; 
	
	// constructor
	public WeatherReading() {
		super();
	}
	
	// getters setters
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}	

	public double getRecord_num() {
		return record_num;
	}

	public void setRecord_num(double record_num) {
		this.record_num = record_num;
	}

	public double getAir_temp_c_max() {
		return air_temp_c_max;
	}

	public void setAir_temp_c_max(double air_temp_c_max) {
		this.air_temp_c_max = air_temp_c_max;
	}		

	public double getRel_hum_avg() {
		return rel_hum_avg;
	}

	public void setRel_hum_avg(double rel_hum_avg) {
		this.rel_hum_avg = rel_hum_avg;
	}

	public double getRel_hum_max() {
		return rel_hum_max;
	}

	public void setRel_hum_max(double rel_hum_max) {
		this.rel_hum_max = rel_hum_max;
	}

	public double getAir_temp_c_min() {
		return air_temp_c_min;
	}

	public void setAir_temp_c_min(double air_temp_c_min) {
		this.air_temp_c_min = air_temp_c_min;
	}

	public double getRel_hum_min() {
		return rel_hum_min;
	}

	public void setRel_hum_min(double rel_hum_min) {
		this.rel_hum_min = rel_hum_min;
	}

	public double getWind_speed_ms_max() {
		return wind_speed_ms_max;
	}

	public void setWind_speed_ms_max(double wind_speed_ms_max) {
		this.wind_speed_ms_max = wind_speed_ms_max;
	}

	public double getWind_speed_avg() {
		return wind_speed_avg;
	}

	public void setWind_speed_avg(double wind_speed_avg) {
		this.wind_speed_avg = wind_speed_avg;
	}

	public double getWind_dir_avg() {
		return wind_dir_avg;
	}

	public void setWind_dir_avg(double wind_dir_avg) {
		this.wind_dir_avg = wind_dir_avg;
	}

	public double getSolar_rad_w_avg() {
		return solar_rad_w_avg;
	}

	public void setSolar_rad_w_avg(double solar_rad_w_avg) {
		this.solar_rad_w_avg = solar_rad_w_avg;
	}

	public double getSolar_rad_w_max() {
		return solar_rad_w_max;
	}

	public void setSolar_rad_w_max(double solar_rad_w_max) {
		this.solar_rad_w_max = solar_rad_w_max;
	}

	public double getRain_mm_total() {
		return rain_mm_total;
	}

	public void setRain_mm_total(double rain_mm_total) {
		this.rain_mm_total = rain_mm_total;
	}

	public double getDew_point_c_min() {
		return dew_point_c_min;
	}

	public void setDew_point_c_min(double dew_point_c_min) {
		this.dew_point_c_min = dew_point_c_min;
	}

	public double getDew_point_c_max() {
		return dew_point_c_max;
	}

	public void setDew_point_c_max(double dew_point_c_max) {
		this.dew_point_c_max = dew_point_c_max;
	}

	public double getWind_chill_c_max() {
		return wind_chill_c_max;
	}

	public void setWind_chill_c_max(double wind_chill_c_max) {
		this.wind_chill_c_max = wind_chill_c_max;
	}

	public double getWind_chill_c_min() {
		return wind_chill_c_min;
	}

	public void setWind_chill_c_min(double wind_chill_c_min) {
		this.wind_chill_c_min = wind_chill_c_min;
	}

	public double getHeat_index_c_max() {
		return heat_index_c_max;
	}

	public void setHeat_index_c_max(double heat_index_c_max) {
		this.heat_index_c_max = heat_index_c_max;
	}

	public double getHeat_index_c_min() {
		return heat_index_c_min;
	}

	public void setHeat_index_c_min(double heat_index_c_min) {
		this.heat_index_c_min = heat_index_c_min;
	}

	public double getEtrs_mm_total() {
		return etrs_mm_total;
	}

	public void setEtrs_mm_total(double etrs_mm_total) {
		this.etrs_mm_total = etrs_mm_total;
	}

	public double getRso() {
		return rso;
	}

	public void setRso(double rso) {
		this.rso = rso;
	}

	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}

	public String getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(String updated_at) {
		this.updated_at = updated_at;
	}

	public double getAir_temp_c_avg() {
		return air_temp_c_avg;
	}

	public void setAir_temp_c_avg(double air_temp_c_avg) {
		this.air_temp_c_avg = air_temp_c_avg;
	}			

}


