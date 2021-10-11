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
    @State private var isShowingSettings: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(destination: FruitDetailsView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical,5)
                    }
                    
                }
            }//: LIST
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })//: BUTTON
                    .sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
            )
            
        }//: NAVIGATION
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
