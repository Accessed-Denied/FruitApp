//
//  FruitAppApp.swift
//  FruitApp
//
//  Created by Rohit Saini on 06/10/21.
//

import SwiftUI

@main
struct FruitAppApp: App {
    
    //MARK: - AppStorage
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
            }
        }
    }
}
