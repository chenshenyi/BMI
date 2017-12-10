//: Playground - noun: a place where people can play

import UIKit

func BMIcalculator( h height: Double, w weight: Double ,hu heightunit: String="m", wu weightunit: String="kg")-> (Double,String){
    var BMIvalue: Double = weight / height / height
    if(heightunit=="cm"){
        BMIvalue*=10000
    }
    if(heightunit=="g"){
        BMIvalue/=1000
    }
    var str: String
    if (BMIvalue < 18){
        str = "underweight"
    }
    else if (BMIvalue>24){
        str = "overweight"
    }
    else{
        str = "normal weight"
    }
    return (BMIvalue,str)
}

var BMIsituation:(Double,String) = BMIcalculator(h: 173, w: 69.4, hu:"cm")
print("Your BMI is: \(String(format: "%.2lf" ,BMIsituation.0)), it is \(BMIsituation.1).")
