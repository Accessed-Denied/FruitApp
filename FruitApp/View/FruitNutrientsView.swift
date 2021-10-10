//
//  FruitNutrientsView.swift
//  FruitApp
//
//  Created by Rohit Saini on 10/10/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    //MARK: - PROPERTIES
    var fruit: Fruit
    var nutrients: [String] = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    
    //MARK: - BODY
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritions value per 100g"){
                ForEach(0 ..< nutrients.count,id: \.self) { item in
                    Divider().padding(2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
        }//: GROUPBOX
        
    }
}

//MARK: - PREVIEW
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
