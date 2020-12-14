//
//  ContentView.swift
//  AddToCartPageDemo
//
//  Created by Akylaiym Shergazy on 5/18/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import SwiftUI

struct Cart {
    var product: String
    var productQuantity: Int
    var customerName: String
    var deliveryAddress: String
}

struct PaymentMethod {
    var cardHolderName: String
    var cardNumber: Int
    var expirationDate: Date
    var CVV: Int
}

struct ContentView: View {
    var product = //will be taken from the previous home page, the item that was selected will be displayed in cart
    var productQuantity = //I want to add a button that will let me select from 1 to 10
    var customerName = // there will be a textfield that will allow the customer to type in
    var deliveryAddress = // there will be a textfield that will allow the customer to type in
    
    var body: some View {
        Text("Hello, World!")
        Text(//display the product selected)
        TextField((//display the textField with productQuantity) text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
        TextField(//allow the customer to type in their name)
        TextField(//allow the customer to type in their address)
        TextField(//PaymentMethod, let the customer enter the data)
            Button(action:{}) {
                Text("Place the Order")
                //this button will take the customer to order confirmation page
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
