//
//  EnterNewRecipeView.swift
//  RecipeAppDemo
//
//  Created by Akylaiym Shergazy on 5/22/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import SwiftUI

struct EnterNewRecipe: View {
    @State var recipeTitle: String = ""
    @State var recipeInstructions: String = ""
    @State var recipeIngredients: String = ""
    
    @Environment(\.presentationMode)
    var mode: Binding<PresentationMode>
    
    @Binding var allProducts: [Product]
    
    var body: some View {
        VStack(spacing: 15) {
            Text("Enter a new recipe below:")
                .font(.title)
                .fontWeight(.bold)
                .lineLimit(2)
            Spacer()
            HStack {
                Spacer()
                MultiLineTF1(txt:$recipeTitle, prompt: "Enter recipe title.").border(Color.gray.opacity(0.5), width: 1)
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                MultiLineTF1(txt:$recipeIngredients, prompt: "Enter recipe ingredients.").border(Color.gray.opacity(0.5), width: 1)
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                MultiLineTF1(txt:$recipeInstructions, prompt: "Enter recipe instructions.").border(Color.gray.opacity(0.5), width: 1)
                Spacer()
            }
            Spacer()
            
            Button(action: {
                let product = Product(name: self.recipeTitle, description: "", imageName: "recipe.png", ingredients: self.recipeIngredients, instructions: self.recipeInstructions)
                self.allProducts.append(product)
                
                let encoder = JSONEncoder()
                let data = try! encoder.encode(self.allProducts)
                let documentsDirectory = try!
                    FileManager.default.url(for: .documentDirectory, in: .userDomainMask,
                                            appropriateFor: nil,
                                            create: false)
                let path = documentsDirectory.appendingPathComponent("Recipes.json")
                try! data.write(to: path)
                self.mode.wrappedValue.dismiss()
            }) {
                Text("Save recipe")
            }
        }
    }
}


//struct EnterNewRecipeDemo_Previews: PreviewProvider {
//    static var previews: some View {
//        EnterNewRecipe()
//    }
//}


struct MultiLineTF1: UIViewRepresentable {
    
    @Binding var txt : String
    var prompt: String
    
    func makeCoordinator() -> Coordinator {
        return MultiLineTF1.Coordinator(parent1: self)
    }
    
    func makeUIView(context: UIViewRepresentableContext<MultiLineTF1>)-> UITextView{
        let tview = UITextView()
        
        tview.isEditable = true
        tview.isUserInteractionEnabled = true
        tview.isScrollEnabled = true
        tview.text = prompt
        tview.textColor = .black
        tview.font = .systemFont(ofSize: 20)
        tview.delegate = context.coordinator
        
        return tview
    }
    func updateUIView(_ uiView: UITextView, context: UIViewRepresentableContext<MultiLineTF1>) {
        
    }
    class Coordinator : NSObject, UITextViewDelegate {
        var parent: MultiLineTF1
        
        init(parent1: MultiLineTF1) {
            parent = parent1
        }
        
        func textViewDidChange(_ textView: UITextView){
                self.parent.txt = textView.text
        }
        
        func textViewDidBeginEditing(_ textView: UITextView){
            textView.text = ""
            textView.textColor = .black
        }
    }
}
