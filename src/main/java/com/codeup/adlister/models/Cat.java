package com.codeup.adlister.models;

public class Cat {


        private long id;
        private long adId;
        private long year;
        private String make;
        private String model;
        private String transmission;
        private String color;
        private String fule;
        private long price;
        private String carCondition;
        private long mileage;
        private String engineType;


        public Cat(long id, long adId, long year,long price,long mileage,String make, String model, String transmission,String color, String fule, String carCondition, String engineType) {
            this.id = id;
            this.adId = adId;
            this.year = year;
            this.price = price;
            this.mileage = mileage;
            this.make = make;
            this.model = model;
            this.transmission = transmission;
            this.color = color;
            this.fule = fule;
            this.carCondition = carCondition;
            this.engineType = engineType;
        }

    public Cat(long adId, long year,long price,long mileage,String make, String model, String transmission,String color, String fule, String carCondition, String engineType) {

        this.adId = adId;
        this.year = year;
        this.price = price;
        this.mileage = mileage;
        this.make = make;
        this.model = model;
        this.transmission = transmission;
        this.color = color;
        this.fule = fule;
        this.carCondition = carCondition;
        this.engineType = engineType;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getAdId() {
        return adId;
    }

    public void setAdId(long adId) {
        this.adId = adId;
    }

    public long getYear() {
        return year;
    }

    public void setYear(long year) {
        this.year = year;
    }

    public String getMake() {
        return make;
    }

    public void setMake(String make) {
        this.make = make;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getTransmission() {
        return transmission;
    }

    public void setTransmission(String transmission) {
        this.transmission = transmission;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getFule() {
        return fule;
    }

    public void setFule(String fule) {
        this.fule = fule;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public String getCarCondition() {
        return carCondition;
    }

    public void setCarCondition(String carCondition) {
        this.carCondition = carCondition;
    }

    public long getMileage() {
        return mileage;
    }

    public void setMileage(long mileage) {
        this.mileage = mileage;
    }

    public String getEngineType() {
        return engineType;
    }

    public void setEngineType(String engineType) {
        this.engineType = engineType;
    }
}
