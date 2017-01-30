//
// ch2.swift
//
// Created by Zach Jetson
// Repository hosted at https://github.com/subfission/swift-playground/ch2
//
// Based on 
//      Christian Keur. iOS Programming: The Big Nerd Ranch Guide
//
// More Swift documentation found on https://developer.apple.com/swift/
//

import UIKit

/********************* Swift Types *********************/

// Structures, Classes, Enums
struct MyStruct {}
class MyClass {}
enum MyEnum {}

/*!
 Note: all types include the following:
 - properties: values associated with a type
 - initializers: code that initializes an instance of a type
 - instance methods: functions specific to a type that can be called on an instance of that type
 - class/static methods: functions specific to a type that can be called on the type itself
 
 These types can also be extended.
 */


/********************** Variables **********************/

// Variable creation and adjustment
/*!
    Note: variables are implictly typed 
    if type is not specified.
*/
var str = "Hello, playground"
str = "Hello, Swift"

// Strictly typing variables
var nextYear: Int
var bodyTemp: Float
var hasPet: Bool

// Constant creation
let contStr = str

/******************* Collection Types *******************/

// Array contruction: Array<Element>
var arrayOfInts1: Array<Int>

// Array contruction shorthand notation
var arrayOfInts2: [Int]

// Dictionary contruction (must be strongly typed): Dictionary<Key:Hashable,Value>
var dictionaryOfCapitalsByCountry1: Dictionary<String,String>

// Dictionary contruction shorthand
var dictionaryOfCapitalsByCountry2: [String:String]

// Set contruction (shorthand not available): Set<Element:Hashable>
/*! 
    Note: similar to array, although it
    uses hashes and is unordered.
*/
var winningLotterNumbers: Set<Int>

/************** Literals and Subscripting ***************/

// Literal values
let number = 42
let fmStration = 91.1
let countingUp = ["one", "two"]
let nameByParkingSpace = [13: "Alice", 27: "Bob"]

// Subscripting
let secondElement = countingUp[1]

/******************** Initializers **********************/

// Loading empty defaults through initializers
let emptyStrong = String()
let emptyArrayOfInts = [Int]()
let emptySetOfFloats = Set<Float>()
let defaultNumber = Int()
let defaultBool = Bool()

/*!
    Note: String initializer has a method 
    for accepting integers.
*/
let meaningOfLife = String(number)

// Set initializer for arrays
let availableRooms = Set([205, 411, 412])

// Float initializer
let defaultFloat = Float()
let floatFromLiteral = Float(3.14)

// Float initilization from a double
let easyPi = 3.14
let floatFromDouble = Float(easyPi)

/********************* Properties **********************/

// Getting the count of a string literal array
countingUp.count

// Using isEmpty property of a string array
let emptyString = String()
emptyString.isEmpty

/******************* Instanct Methods ******************/

// Using instance methods to append to an array
var countingUp2 = ["one", "two"]
let scondeElement = countingUp2[1]
countingUp2.count
countingUp2.append("three")

/********************** Optionals **********************/

var anOptionalFloat: Float?
var anOptionalArrayOfStrings: [String]?
var anOptionalArrayOfOptionalStrings: [String?]?

var reading1: Float?
var reading2: Float?
var reading3: Float?
reading1 = 9.8
reading2 = 9.2
reading3 = 9.7

// Using forced unwrapping
/*!
 Note: forced unwrapping is considered unsafe as it can
 lead to a program expecting a value that does not exist
 */
let avgReading = (reading1! + reading2! + reading3!) / 3

// Safe unwrapping using optional bindings
if let r1 = reading1, let r2 = reading2, let r3 = reading3 {
    let avgReading2 = (r1 + r2 + r3) / 3
} else {
    let errorString = "Instrument reported a reading that was nil"
}

/************** Subscripting Dictionaries **************/

// Subscripting a dictionary
let nameByParkingSpace2 = [13: "Alice", 27: "Bob"]
let space13Assignee: String? = nameByParkingSpace2[13]

// Subscripting from a non-existant index
let space42Assignee: String? = nameByParkingSpace2[42]

// Using if-let to check existance of index
if let space13Assignee = nameByParkingSpace2[13] {
    print("Key 13 is assigned in the dictionary!")
}

/*********** Loops and String Interpolation ************/

// Iterating through an array
let range = 0..<countingUp.count
for i in range{
    let string = countingUp[i]
}

// Better method for enumeration of array items
/*!
 Note: tuples are not supported by Objective-C
 */
for (i,string) in countingUp.enumerated() {
    // use tuple values (0, "one") (1, "two")
}

// Enumeration of a dictionary
for (space, name) in nameByParkingSpace {
    // items with "\()" can be inserted at runtime
    let permit = "Space \(space): \(name)"
}

/******* Enumerations and the Switch Statement *********/

// Defining an Enum
enum PieType {
    case apple
    case cherry
    case pecan
}

let favoritePie = PieType.apple

// Switch statement for matching enum values
let name: String
switch favoritePie {
case .apple:
    name = "Apple"
case .cherry:
    name = "Cherry"
case .pecan:
    name = "Pecan"
}

// Switch statement match on range
/*!
 Note: switch statements don't require break keywords.
 Use the "fallthrough" keyword if this is necessary.
 */
let macOSVersion: Int = 12
switch macOSVersion {
    case 0...8:
        print("A big cat")
    case 9:
        print("Mavericks")
    case 10:
        print("Yosemite")
    case 11:
        print("El Capitan")
    case 12:
        print("Sierra")
    default:
        print("Greetings, people of the future! What's new in 10.\(macOSVersion)?")
}

/************ Enumerations and Raw Values **************/

// Defining Enum with raw value
enum PieType2: Int {
    case apple = 0
    case cherry
    case pecan
}
/*!
 Note: enums with integers defined, auto-increment when
 not explictitly defined.  Other values do not get
 implicitly defined.
 */

// Setting an optional constant from an enum raw value
let pieRawValue = PieType2.pecan.rawValue

// Optional binding from an enum instance optional
if let pieType = PieType2(rawValue: pieRawValue) {
    print("Got a valid pieType")
}

print("\nFurther documentation found at: https://developer.apple.com/swift/")

