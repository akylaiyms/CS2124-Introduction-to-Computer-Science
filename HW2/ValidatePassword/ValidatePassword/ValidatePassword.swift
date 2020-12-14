//
//  main.swift
//  ValidatePassword
//
//  Created by Akylaiym Shergazy on 3/1/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

print("Please enter your password below:")
var password1 = readLine()!

while (password1.count < 8 || password1.count > 15) {
    print("The password must not be less than 8 and more than 15 characters. Please enter new password:")
    password1 = readLine()!
}

print("The password is valid. Please re-enter your password:")
var password2 = readLine()!

while password2 != password1 {
    print("The passwords don't match. Please try again:")
    password2 = readLine()!
}


print("Success! The passwords match.")





