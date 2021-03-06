package com.kralin27.ilc.fall2016.domain;

public class WeatherReadingsSummary {
	// instance variables
	private int ReadingsCount;
	private String ReadingFirst;
	private String ReadingLast;	
	private int MissingReadingCount; 

	// constructor
	public WeatherReadingsSummary() {
		super();
	}
	
	// getters and setters
	public Integer getReadingsCount() {
		return ReadingsCount;
	}

	public void setReadingsCount(Integer Readings_Count) {
		this.ReadingsCount = Readings_Count;
	}
	
	public String getReadingFirst() {
		return ReadingFirst;
	}

	public void setReadingFirst(String ReadingFirst) {
		this.ReadingFirst = ReadingFirst;
	}	

	public String getReadingLast() {
		return ReadingLast;
	}

	public void setReadingLast(String ReadingLast) {
		this.ReadingLast = ReadingLast;
	}

	public int getMissingReadingCount() {
		return MissingReadingCount;
	}

	public void setMissingReadingCount(int missingReadingCount) {
		MissingReadingCount = missingReadingCount;
	}		
	
}
