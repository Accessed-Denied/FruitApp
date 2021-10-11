//
//  SettingsView.swift
//  FruitApp
//
//  Created by Rohit Saini on 11/10/21.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing:20) {
                    // MARK: - SECTION 1
                    GroupBox(label: HStack {
                        SettingsLabelView(labelText: "FruitApp", lableImage: "info.circle")
                    }) {
                        Divider().padding(.vertical,5)
                        HStack(alignment: .center,spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width:80,height: 80)
                                .cornerRadius(10)
                            Text("Most fruits are are naturally low in fat, sodium and calories. None have clolestesrol. Fruits are sources of many essential nutrients including potassium, dietary fiber, vitamins, and many more.")
                                .font(.footnote)
                        }//: HSTACK
                        
                    }
                    
                    // MARK: - SECTION 2
                    GroupBox(label: HStack {
                        SettingsLabelView(labelText: "Application", lableImage: "apps.iphone")
                    }) {
                        
                        SettingsRowView(name: "Developer", content: "Rohit Siani")
                        
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Master class",linkDestination: "swiftuimasterclass.com")
                        
                        SettingsRowView(name: "instagram", linkLabel: "@rohitsainier",linkDestination: "rohitsainier")
                        
                        SettingsRowView(name: "SwiftUI",content: "2.0")
                        
                        SettingsRowView(name: "Version",content: "1.1.0")
                        
                    }
                    
                    
                    // MARK: - SECTION 3
                    
                    
                }//: VSTACK
                
            }//: SCROLLVIEW
            .navigationBarTitle(Text("Settings"),displayMode: .large)
            .navigationBarItems(
                trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
            )
            .padding()
        }//: NAVIGATION
       
    }
}


//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
