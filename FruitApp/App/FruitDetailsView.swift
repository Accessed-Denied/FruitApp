//
//  FruitDetailsView.swift
//  FruitApp
//
//  Created by Rohit Saini on 10/10/21.
//

import SwiftUI

struct FruitDetailsView: View {
    
    //MARK: - PROPERTIES
    var fruit: Fruit
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20){
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        // SUBHEADING
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        
                        // DESCRIPTION
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // LINK
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                        
                        
                    }//: VSTACK
                    .padding(.horizontal,20)
                    .frame(maxWidth: UIScreen.main.bounds.width - 20,alignment: .center)
                    
                }//: VSTACK
                .navigationBarTitle(fruit.title,displayMode: .inline)
                .navigationBarHidden(true)
                
            }//: SCROLL
            .edgesIgnoringSafeArea(.top)
            
        }//: NAVIGATION
    }
}

//MARK: PREVIEW
struct FruitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsView(fruit: fruitsData[0])
    }
}
