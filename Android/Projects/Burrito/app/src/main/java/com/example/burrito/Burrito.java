package com.example.burrito;

public class Burrito {
    private String restuarantName;
    private String restuarantURL;

    private void selectResturant(Integer selectPlace) {
        switch (selectPlace) {
            case 0:
                restuarantName = "Illegal Petes";
                restuarantURL = "https://www.illegalpetes.com";
                break;
            case 1:
                restuarantName = "Chipotle";
                restuarantURL = "http://www.chipotle.com";
                break;
            case 2:
                restuarantName = "Bartco";
                restuarantURL = "https://bartco.com";
        }
    }
}
