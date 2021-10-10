//
//  ContentView.swift
//  FruitApp
//
//  Created by Rohit Saini on 06/10/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    FruitRowView(fruit: item)
                        .padding(.vertical,5)
                }
            }//: LIST
            .navigationTitle("Fruits")
            
        }//: NAVIGATION
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
