/*:
[← Classes, Methods and Extensions - Exercise 3](@previous)
## Properties
### Exercise 4

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


//: **Task:** add a computed property fahrenheitValue to Temperature. Define both a getter and a setter for this property.

extension Temperature {
    private var fahrenheitValue: Double {
        set(newFahrenheitValue) {
            celsiusValue = (newFahrenheitValue - 32.0) * (5.0 / 9.0)
        }
        get {
            return celsiusValue*9.0/5.0 + 32.0
        }
    }

}
//: **Task:** Create an instance of Temperature and use the fahrenheitValue
var temp = Temperature()

print(temp.fahrenheitValue)

temp.fahrenheitValue = 80.0
temp.celsiusValue

//: **Task:** Set the fahrenheitValue of Temperature and use the resulting celsiusValue
print(temp.celsiusValue)


private class SomePrivateClass {
}
private func someFunction() -> SomePrivateClass {
    let myClass = SomePrivateClass()
    return myClass
}


//: [Collection Types - Exercise 5/6 →](@next)
