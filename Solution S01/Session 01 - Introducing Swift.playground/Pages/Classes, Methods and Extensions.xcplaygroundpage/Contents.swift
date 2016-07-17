/*:
[← Classes - Exercise 2](@previous)
## Classes, Methods and Extensions
### Exercise 3

**Note:** The `Temperature` class was taken from the previous exercise for your convenience.
*/
import Foundation

class Temperature {
    
    private var celsiusValue: Double
    
    init() {
        celsiusValue = Temperature.randomTemperature()
        print("°C \(celsiusValue)")
    }
    
    class func randomTemperature() -> Double {
        return  (Double)(arc4random()) / 10000 % 50
    }

}

extension Temperature {

    func calcFahrenheitValue() -> Double {
        return celsiusValue * 1.8000 + 32.00
    }
    
    class func celsiusFromFahrenheit(fahrenheit: Double) -> Double {
        return (fahrenheit - 32.0)/1.8
    }
    
}
//: **Task:** Create an instance of Temperature and try to invoke `calcFahrenheitValue()`
let temperature = Temperature()
temperature.calcFahrenheitValue()

Temperature.celsiusFromFahrenheit(20.0)



//: [Properties - Exercise 4 →](@next)
