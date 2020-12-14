//
//  ContentView.swift
//  HomePageDemo
//
//  Created by Akylaiym Shergazy on 5/9/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import SwiftUI

struct Product : Hashable, Codable {
    var name : String
    var description : String
    var imageName : String
    var ingredients: String
    var instructions: String
}

struct ContentView: View {
    
    func printRecipeJson() {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let productInfo = try! encoder.encode(products)
        print (String(data: productInfo, encoding: .utf8)!)
    }
    @State var products = [Product]()
    
    var body: some View {
        NavigationView {
            MasterView(products: self.$products)
                .navigationBarTitle(Text("My Recipes"))
                .navigationBarItems(trailing: NavigationLink(destination: EnterNewRecipe(allProducts: $products)){
                    Image(systemName: "plus")
                })
            
        }
            
        .onAppear {
            let documentsDirectory = try!
                FileManager.default.url(for: .documentDirectory, in: .userDomainMask,
                                        appropriateFor:nil,
                                        create:false)
            var path = documentsDirectory.appendingPathComponent("Recipes.json").path
            if !FileManager.default.fileExists(atPath: path ) {
                path = Bundle.main.path(forResource: "text", ofType: "json")!
            }
            let url = URL(fileURLWithPath: path)
            let inputText = try! String(contentsOf: url)
            self.products = try!
                JSONDecoder().decode([Product].self, from: inputText.data(using: .utf8)!)
            
        }
    }
}


struct MasterView : View {
    @Binding var products : [Product]
    
    var body: some View {
        List {
            ForEach(self.products, id: \.self)
            { product in
                HStack {
                    Image(systemName: product.imageName)
                    NavigationLink(destination: ProductView(currentProduct: product))
                    {
                        Text(product.name)
                    }
                }
            }
        }
    }
}


struct ProductView: View {
    var currentProduct : Product
    
    var body: some View {
        VStack {
            List {
                VStack {
                    HStack {
                        Spacer()
                        Text(self.currentProduct.name)
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
                    Spacer()
                    Image(self.currentProduct.imageName)
                        .clipped()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text(self.currentProduct.description)
                        .font(.body)
                        .multilineTextAlignment(.center)
                    Spacer()
                    HStack {
                        Text("Ingredients:")
                            .font(.headline)
                        VStack {
                            Divider()
                            Text(self.currentProduct.ingredients)
                        }
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Text("Instructions:")
                            .font(.headline)
                        VStack {
                            Divider()
                            Text(self.currentProduct.instructions)
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
