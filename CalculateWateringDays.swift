//
//  CalculateWateringDays.swift
//  SilverSprout_Demo
//
//  Created by Daniel Duong on 5/5/2023.
//

// calculations based on:
//https://www.watercorporation.com.au/Waterwise/Watering-days/Determining-your-watering-days#:~:text=Scheme%20water%20users%20in%20Perth,digit%20of%20your%20street%20number.

import Foundation
import SwiftUI

func calculation(userday: String)-> String{
    
    let lastChar = userday.last
    var returnValue: String
    
    switch lastChar {
    case "0":
        returnValue = "Monday & Friday"
        return returnValue
        
    case "1":
        returnValue = "Wednesday & Saturday"
        return returnValue

    case "2":
        returnValue = "Sunday & Thursday"
        return returnValue

    case "3":
        returnValue = "Monday & Friday"
        return returnValue

    case "4":
        returnValue = "Tuesday & Saturday"
        return returnValue

    case "5":
        returnValue = "Sunday & Wednesday"
        return returnValue

    case "6":
        returnValue = "Monday & Thursday"
        return returnValue

    case "7":
        returnValue = "Tuesday & Friday"
        return returnValue

    case "8":
        returnValue = "Wednesday & Saturday"
        return returnValue

    case "9":
        returnValue =  "Sunday & Thursday"
        return returnValue

    default:
        returnValue = "Error"
        return returnValue

    }
}
