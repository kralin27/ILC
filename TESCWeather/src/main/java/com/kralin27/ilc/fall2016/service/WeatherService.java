package com.kralin27.ilc.fall2016.service;

import java.util.List;

import com.kralin27.ilc.fall2016.domain.Timestamp;
import com.kralin27.ilc.fall2016.domain.WeatherReading;
import com.kralin27.ilc.fall2016.domain.WeatherReadingsSummary;

public interface WeatherService {
	Integer getRecordCount();
	
	WeatherReading getWeatherReadingById(Integer id);
	
	List<WeatherReading> getWeatherReadingsByDate(String date);
	
	List<WeatherReading> getWeatherReadingsByMeasure(String measure, Integer records);
	
	List<Timestamp> getWeatherReadingMissing();

	List<Timestamp> getWeatherReadingMissingDetail(String date);
	
	WeatherReadingsSummary getWeatherReadingsSummary();
}
