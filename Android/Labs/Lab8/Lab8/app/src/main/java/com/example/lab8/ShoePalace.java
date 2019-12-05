package com.example.lab8;

public class ShoePalace {
    private String shoePalaceName;
    private String shoePalaceURL;

    private void setCoffeeInfo(Integer coffeeCrowd){
        switch (coffeeCrowd){
            case 0: //popular
                shoePalaceName="Vans";
                shoePalaceURL="https://www.vans.com";
                break;
            case 1: //comfortable
                shoePalaceName="Sketchers";
                shoePalaceURL="https://www.skechers.com/en-us/";
                break;
            case 2: //running
                shoePalaceName="Adidas";
                shoePalaceURL="https://www.adidas.com/us";
                break;
            case 3: //fashion
                shoePalaceName="Gucci";
                shoePalaceURL="https://www.gucci.com/us/en/";
                break;
            case 4: //basketball
                shoePalaceName="Jordan";
                shoePalaceURL="https://www.jordan.com/collection/";
                break;
            default:
                shoePalaceName="None";
                shoePalaceURL="https://www.google.com/search?q=shoes&oq=shoes&aqs=chrome..69i57j0l4j69i61l3.2387j0j7&sourceid=chrome&ie=UTF-8";
        }
    }

    public String getshoePalaceName(){
        return shoePalaceName;
    }

    public String getshoePalaceURL(){
        return shoePalaceURL;
    }

    public void setshoePalaceName(Integer coffeeCrowd){
        setCoffeeInfo(coffeeCrowd);
    }

    public void setshoePalaceURL(Integer coffeeCrowd){
        setCoffeeInfo(coffeeCrowd);
    }

}

