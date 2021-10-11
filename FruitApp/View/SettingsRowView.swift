//
//  SettingsRowView.swift
//  FruitApp
//
//  Created by Rohit Saini on 11/10/21.
//

import SwiftUI

struct SettingsRowView: View {
    
    //MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical,5)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if content != nil{
                    Text(content!)
                }
                else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!,destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else{
                    EmptyView()
                }
                
                
            }
        }
    }
}

//MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Rohit Saini")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
