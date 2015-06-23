package jyl.realtime.compare;

import java.sql.Timestamp;

public class CompareBean {
	String exchangeTime;
	float currentPriceSZ;
	float currentPrice50;
	float currentPrice50F;
	Long currentVolSZ;
	public float getCurrentPrice50F() {
		return currentPrice50F;
	}
	public void setCurrentPrice50F(float currentPrice50F) {
		this.currentPrice50F = currentPrice50F;
	}
	public double getCurrentAmount50F() {
		return currentAmount50F;
	}
	
	public Long getCurrentVol50F() {
		return currentVol50F;
	}
	public void setCurrentVol50F(Long currentVol50F) {
		this.currentVol50F = currentVol50F;
	}
	public Long getCurrentVol50FHold() {
		return currentVol50FHold;
	}
	public void setCurrentVol50FHold(Long currentVol50FHold) {
		this.currentVol50FHold = currentVol50FHold;
	}
	public Long getCurrentAmountSZ() {
		return currentAmountSZ;
	}
	public void setCurrentAmountSZ(Long currentAmountSZ) {
		this.currentAmountSZ = currentAmountSZ;
	}
	public Long getCurrentAmount50() {
		return currentAmount50;
	}
	public void setCurrentAmount50(Long currentAmount50) {
		this.currentAmount50 = currentAmount50;
	}
	public void setCurrentVolSZ(Long currentVolSZ) {
		this.currentVolSZ = currentVolSZ;
	}
	public void setCurrentVol50(Long currentVol50) {
		this.currentVol50 = currentVol50;
	}
	public void setCurrentAmount50F(Long currentAmount50F) {
		this.currentAmount50F = currentAmount50F;
	}

	Long currentVol50;
	Long currentVol50F;
	Long currentVol50FHold;
	
	Long currentAmountSZ;
	Long currentAmount50;
	Long currentAmount50F;

	
	
	public String getExchangeTime() {
		return exchangeTime;
	}
	public void setExchangeTime(String exchangeTime) {
		this.exchangeTime = exchangeTime;
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
	
	public float getCurrentPrice50() {
		return currentPrice50;
	}
	public void setCurrentPrice50(float currentPrice50) {
		this.currentPrice50 = currentPrice50;
	}
	public float getCurrentVol50() {
		return currentVol50;
	}
	
	
	

}
