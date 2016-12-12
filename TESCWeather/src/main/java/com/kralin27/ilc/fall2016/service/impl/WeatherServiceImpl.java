package com.kralin27.ilc.fall2016.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kralin27.ilc.fall2016.domain.Timestamp;
import com.kralin27.ilc.fall2016.domain.WeatherReading;
import com.kralin27.ilc.fall2016.domain.WeatherReadingsSummary;
import com.kralin27.ilc.fall2016.domain.repository.WeatherRepository;
import com.kralin27.ilc.fall2016.service.WeatherService;

@Service
public class WeatherServiceImpl implements WeatherService {

	@Autowired
	private WeatherRepository weatherRepository;
	
	@Override
	public Integer getRecordCount() {
		return weatherRepository.getRecordCount();
	}
	
	@Override
	public WeatherReading getWeatherReadingById(Integer id) {
		return weatherRepository.getWeatherReadingById(id);
	}	

	@Override
	public List<WeatherReading> getWeatherReadingsByDate(String date){
		return weatherRepository.getWeatherReadingsByDate(date);
	}
	
	@Override
	public List<WeatherReading> getWeatherReadingsByMeasure(String measure, Integer records){
		return weatherRepository.getWeatherReadingsByMeasure(measure, records);
	}	
	
	@Override
	public WeatherReadingsSummary getWeatherReadingsSummary() {
		return weatherRepository.getWeatherReadingsSummary();
	}	
	
	@Override
	public List<Timestamp> getWeatherReadingMissing(){
		return weatherRepository.getWeatherReadingMissing(); 
	}

	@Override
	public List<Timestamp> getWeatherReadingMissingDetail(String date){
		return weatherRepository.getWeatherReadingMissingDetail(date); 
	}

	
	
}