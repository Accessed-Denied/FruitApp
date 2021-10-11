//
//  SettingsLabelView.swift
//  FruitApp
//
//  Created by Rohit Saini on 11/10/21.
//

import SwiftUI

struct SettingsLabelView: View {
    
    //MARK: - PROPERTIES
    var labelText: String
    var lableImage: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
           Text(labelText.uppercased())
           Spacer()
           Image(systemName: lableImage)
        }
    }
}

//MARK: - PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "FruitApp", lableImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
