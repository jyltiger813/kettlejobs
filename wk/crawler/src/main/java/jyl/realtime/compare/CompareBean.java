package jyl.realtime.compare;

import java.sql.Timestamp;

public class CompareBean {
	Timestamp exchangeTime;
	float currentPriceSZ;
	float currentPriceOil;
	float currentVolSZ;
	float currentVolOil;
	float currentAmountSZ;
	float currentAmountOil;
	public Timestamp getExchangeTime() {
		return exchangeTime;
	}
	public void setExchangeTime(Timestamp exchangeTime) {
		this.exchangeTime = exchangeTime;
	}
	
	public float getCurrentPriceOil() {
		return currentPriceOil;
	}
	public void setCurrentPriceOil(float currentPriceOil) {
		this.currentPriceOil = currentPriceOil;
	}
	
	public float getCurrentVolOil() {
		return currentVolOil;
	}
	public void setCurrentVolOil(float currentVolOil) {
		this.currentVolOil = currentVolOil;
	}
	
	public float getCurrentPriceSZ() {
		return currentPriceSZ;
	}
	public void setCurrentPriceSZ(float currentPriceSZ) {
		this.currentPriceSZ = currentPriceSZ;
	}
	public float getCurrentVolSZ() {
		return currentVolSZ;
	}
	public void setCurrentVolSZ(float currentVolSZ) {
		this.currentVolSZ = currentVolSZ;
	}
	public float getCurrentAmountSZ() {
		return currentAmountSZ;
	}
	public void setCurrentAmountSZ(float currentAmountSZ) {
		this.currentAmountSZ = currentAmountSZ;
	}
	public float getCurrentAmountOil() {
		return currentAmountOil;
	}
	public void setCurrentAmountOil(float currentAmountOil) {
		this.currentAmountOil = currentAmountOil;
	}

}
