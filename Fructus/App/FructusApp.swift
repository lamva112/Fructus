//
//  FructusApp.swift
//  Fructus
//
//  Created by bui khac lam on 16/03/2023.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if(isOnboarding){
                OnboardingView()
            }else{
                ContentView()
            }
        }
    }
}
