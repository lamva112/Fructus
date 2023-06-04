//
//  OnboardingView.swift
//  Fructus
//
//  Created by bui khac lam on 18/03/2023.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = FruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            } // : LOOP
        } // : TAB
        .tabViewStyle(PageTabViewStyle())
    .padding(.vertical,20)
    }
}

// MARK: PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: FruitsData)
    }
}
