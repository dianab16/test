/*:
[← Properties - Exercise 4](@previous)
## Collection Types
### Arrays - Exercise 5

**Task:** Create an array with 6 `Int` values
*/

var array = [1,2,3,4,5,6]
print(array)
array.count
array.append(6)
array.insert(2, atIndex: 6)

/*: repeat the common methods from the slides
#### Common methods:
* `someArray[i]` - Subscript notation: Access the element at index `i` (Int) of the array
* `var count: Int { get }` - Returns the number of elements in the array
* `func append(newElement: Element)` - Adds `newElement` of type `Element` at the end of the array
* `func insert(newElement: Element, atIndex i: Int)` - Inserts `newElement` at index `i`. If `i` is occupied, elements from `i` will be shifted.
* `func removeAtIndex(index: Int) -> Element` - Removes the object at `index` from the array

*Hint: To see the type of a property hold down the `Option`-Key and click on the property*

Participants of the tea party
*/
var partyGuests = ["Dora", "Lucas", "Constantin", "Barbara", "Andreas"]


//: Correct the spelling of Lucas
partyGuests[1] = "Lukas"



//: **Task:** Add yourself to the guest list


partyGuests.append("Diana")
//: **Task:** Show the array of participants in the sidebar
print(partyGuests)



/*: 
### Dictionaries - Exercise 6
#### Common methods:
* `var count: Int { get }` - Returns the number of key-value pairs in the dictionary
* `func updateValue(value: Value, forKey key: Key) -> Value?` - Inserts or updates a value for a given key and returns the previous value for that key. 
* `func removeValueForKey(key: Key) -> Value?` - Removes the key-value pair for the specified key from the dictionary and returns the previous value for that key.

Dictionary of participants and their tea orders
*/
var teaOrders = [
    "Diana": "Black tea",
    "Iura": "Whiskey tea",
    "Barbaba": "water"
]








//: Barbara changed her mind.

teaOrders["Barbaba"] = "juice"
teaOrders

//: **Task:** Place your order

teaOrders["Mihai"] = "apple juice"


//: **Task:** Show the updated dictionary of tea orders in the sidebar
teaOrders


