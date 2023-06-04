//
//  StartButtonView.swift
//  Fructus
//
//  Created by bui khac lam on 18/03/2023.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - BODY
    var body: some View {
        Button(
            action: {
                isOnboarding = false 
            },
            label: {
                HStack (spacing: 8){
                    Text("start").foregroundColor(Color.white)
                    Image(systemName: "arrow.right.circle").imageScale(.large).foregroundColor(Color.white)
                        
                }
                .padding(.horizontal,16)
                .padding(.vertical,10)
                .background(
                    Capsule().strokeBorder(Color.white,lineWidth: 1.25)
                )
            }
        )// BUTTON
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
