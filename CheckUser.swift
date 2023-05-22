//
//  CheckUser.swift
//  SilverSprout_Demo
//
//  Created by Daniel Duong on 7/5/2023.
//
// This file checks whether a user is new (goes through the set-up) or is a current user and wants to change their house number

import Foundation

struct User{
    var newUser: Bool
    
    mutating func activateUser(){
        newUser = false
    }
}
