/*:
[← Fundamental Types - Exercise 1](@previous)
## Classes
### Exercise 2

**Task:** Create a new class `Temperature`
*/
import Foundation

class Temperature {
    

    private var celsiusTemperature: Double
    
    init() {
        celsiusTemperature = Temperature.randomTemperature()
        print("°C \(celsiusTemperature)")
    }
    
    class func randomTemperature() -> Double {
        return (Double)(arc4random()) / 10000 % 50
        
    }

}

let x = Temperature()

x.celsiusTemperature


//: [Classes, Methods and Extensions - Exercise 3 →](@next)
