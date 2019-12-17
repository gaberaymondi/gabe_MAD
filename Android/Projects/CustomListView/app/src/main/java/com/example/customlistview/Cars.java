package com.example.customlistview;

public class Cars {
    String car_name;

    public Cars(String car_name,int car_image) {
        this.car_name=car_name;
        this.image_car=car_image;
    }
    public String getCar_name() {
        return car_name;
    }

    public void setCar_name(String car_name) {
        this.car_name = car_name;
    }

    public int getImage_car() {
        return image_car;
    }

    public void setImage_car(int image_car) {
        this.image_car = image_car;
    }

    int image_car;
}
