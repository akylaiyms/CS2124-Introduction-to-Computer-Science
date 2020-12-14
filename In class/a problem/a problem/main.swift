//
//  main.swift
//  a problem
//
//  Created by Akylaiym Shergazy on 4/5/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation


let n1 = Int()
let n2 = Int()
let n3 = Int()
let n4 = Int()
for n1 in stride(from: 0, through: 20, by: 0.5) {
    for n2 in stride(from: 0, through: 20, by: 0.5){
        for n3 in stride(from: 0, through: 20, by: 0.5){
            for n4 in stride(from: 0, through: 20, by: 0.5){
              if (n1 + n2 == 8.0), (n1 + n3 == 6.0), (n2 + n4 == 8.0), (n3 - n4 == 6.0) {
                  print (n1, n2, n3, n4)
                }
                
            }
        }
    }
 }
