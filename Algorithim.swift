//
//  Algorithim.swift
//  
//
//  Created by Raquel Rahmey on 2/26/17.
//
//

import Foundation

import UIKit


struct Time {
    
    var time: String
    
    func lessThanHalf(hour: String, minute: Int) -> Int {
        return minute * 6
    }
    func moreThanHalf(hour: String,minute: Int) -> Int {
        return 360 - (minute * 6)
    }
    
    mutating func condenseTime (hour: String) -> String {
        switch hour {
        case "1","13":
            return "1"
        case "2","14":
            return "2"
        case "3","15":
            return "3"
        case "4","16":
            return "4"
        case "5","17":
            return "5"
        case "6","18":
            return "6"
        case "7","19":
            return "7"
        case "8","20":
            return "8"
        case "9","21":
            return "9"
        case "10","22":
            return "10"
        case "11","23":
            return "11"
        case "00", "12":
            return "12"
        default:
            return "That does not exist"
        }
    }
    
    mutating func degreesFromTime (time: Time) -> Int {
        
        var stringArray: [String] = time.time.components(separatedBy: ":")
        stringArray[0] = condenseTime(hour: stringArray[0])
        var degrees = Int()
        let hour = stringArray[0]
        let minute = stringArray[1]
        if var minute = Int(minute) {
            
            
            switch hour {
            case "12":
                if minute <= 30 {
                    degrees = lessThanHalf(hour: hour, minute: minute)
                } else {
                    degrees = moreThanHalf(hour: hour, minute: minute)
                }
            case "1":
                if minute >= 5 && minute <= 35 {
                    minute -= 5
                    degrees = lessThanHalf(hour: hour, minute: minute)
                } else  if minute > 35 && minute <= 59{
                    minute -= 5
                    degrees = moreThanHalf(hour: hour, minute: minute)
                } else if minute >= 0 && minute <= 5 {
                    minute = (minute + 55)
                    degrees = moreThanHalf(hour: hour, minute: minute)
                }
            case "2":
                if minute >= 10 && minute <= 40 {
                    minute -= 10
                    degrees = lessThanHalf(hour: hour, minute: minute)
                } else if minute > 40 && minute <= 59 {
                    minute -= 10
                    degrees = moreThanHalf(hour: hour, minute: minute)
                } else if minute >= 0 && minute < 10 {
                    minute += 50
                    degrees = moreThanHalf(hour: hour, minute: minute)
                }
            case "3":
                if minute >= 15 && minute <= 45 {
                    minute -= 15
                    degrees = lessThanHalf(hour: hour, minute: minute)
                } else if minute > 45 && minute <= 59{
                    minute -= 15
                    degrees = moreThanHalf(hour: hour, minute: minute)
                } else if minute >= 0 && minute < 15{
                    minute += 45
                    degrees = moreThanHalf(hour: hour, minute: minute)
                }
            case "4":
                if minute >= 20 && minute <= 50 {
                    minute -= 20
                    degrees = lessThanHalf(hour: hour, minute: minute)
                } else if minute > 50 && minute <= 59{
                    minute -= 20
                    degrees = moreThanHalf(hour: hour, minute: minute)
                } else if minute >= 0 && minute < 20 {
                    minute += 40
                    degrees = moreThanHalf(hour: hour, minute: minute)
                }
            case "5":
                if minute >= 25 && minute <= 55 {
                    degrees = lessThanHalf(hour: hour, minute: minute)
                } else if minute > 55 && minute <= 59{
                    degrees = moreThanHalf(hour: hour, minute: minute)
                } else if minute >= 0 && minute < 25 {
                    minute += 35
                    degrees = moreThanHalf(hour: hour, minute: minute)
                }
            case "6":
                if minute <= 30 {
                    degrees = 180 - lessThanHalf(hour: hour, minute: minute)
                } else {
                    degrees = 180 - moreThanHalf(hour: hour, minute: minute)
                }
            case "7":
                if minute >= 5 && minute <= 35 {
                    minute -= 5
                    degrees = 180 - lessThanHalf(hour: hour, minute: minute)
                } else  if minute > 35 && minute <= 59{
                    minute -= 5
                    degrees = 180 - moreThanHalf(hour: hour, minute: minute)
                } else if minute >= 0 && minute <= 5 {
                    minute = (minute + 55)
                    degrees = 180 - moreThanHalf(hour: hour, minute: minute)
                }
            case "8":
                if minute >= 10 && minute <= 40 {
                    minute -= 10
                    degrees = 180-lessThanHalf(hour: hour, minute: minute)
                } else if minute > 40 && minute <= 59 {
                    minute -= 10
                    degrees = 180-moreThanHalf(hour: hour, minute: minute)
                } else if minute >= 0 && minute < 10 {
                    minute += 50
                    degrees = 180-moreThanHalf(hour: hour, minute: minute)
                }
            case "9":
                if minute >= 15 && minute <= 45 {
                    minute -= 15
                    degrees = 180-lessThanHalf(hour: hour, minute: minute)
                } else if minute > 45 && minute <= 59{
                    minute -= 15
                    degrees = 180-moreThanHalf(hour: hour, minute: minute)
                } else if minute >= 0 && minute < 15{
                    minute += 45
                    degrees = 180-moreThanHalf(hour: hour, minute: minute)
                }
            case "10":
                if minute >= 20 && minute <= 50 {
                    minute -= 20
                    degrees = 180 - lessThanHalf(hour: hour, minute: minute)
                } else if minute > 50 && minute <= 59{
                    minute -= 20
                    degrees = 180 - moreThanHalf(hour: hour, minute: minute)
                } else if minute >= 0 && minute < 20 {
                    minute += 40
                    degrees = 180 - moreThanHalf(hour: hour, minute: minute)
                }
            case "11":
                if minute >= 25 && minute <= 55 {
                    degrees = 180-lessThanHalf(hour: hour, minute: minute)
                } else if minute > 55 && minute <= 59{
                    degrees = 180-moreThanHalf(hour: hour, minute: minute)
                } else if minute >= 0 && minute < 25 {
                    minute += 35
                    degrees = 180-moreThanHalf(hour: hour, minute: minute)
                }
            default:
                degrees = 0
            }
        }
        return degrees
        
    }
}


struct Dictionary {
    
    var key: String
    var value : String
    
    
    var keys:[String] = [""]
    var values:[[String]] = [[""]]
    
    mutating func addBrandNewKey(key:String, value:String) {
        keys.append(key)
        values.append([value])
    }
    
    mutating func addKeyNoValue(key:String) {
        for name in keys {
            if name == key {
                keys == keys
            } else {
                keys.append(key)
                values.append([""])
            }
        }
        
        func addValue(key:String, value:String){
            var indexed = Int ()
            for (index,name) in keys.enumerated() {
                if name == key {
                    indexed = index
                    values[indexed].append(value)
                } else {
                    addBrandNewKey(key: key, value: value)
                }
            }
        }
        
        func lookUpKey (key:String) -> [String]{
            var indexed = Int ()
            var retriveValue = [String] ()
            for (index, name) in keys.enumerated(){
                if name == key {
                    indexed = index
                    retriveValue = values[indexed]
                    if retriveValue == [""] {
                        print("The key does not contain a value")
                        return retriveValue
                    } else {
                        return retriveValue
                    }
                } else {
                    print( "That key does not exist")
                    return [""]
                }
            }
        }
        
        func removeKey (key:String){
            var indexed = Int ()
            for (index,name) in keys.enumerated() {
                if name == key {
                    indexed = index
                    keys[indexed] = ""
                    values[indexed] = [""]
                } else {
                    addBrandNewKey(key: key, value: value)
                }
            }
            
        }
        
        
        
        
}
}
