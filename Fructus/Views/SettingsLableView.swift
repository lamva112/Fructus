//
//  SettingsLableView.swift
//  Fructus
//
//  Created by bui khac lam on 21/05/2023.
//

import SwiftUI

struct SettingsLableView: View {
    // MARK: - PROPETIES
    var lableText : String
    var lableImage : String
    // MARK: - BODY
    
    
    var body: some View {
        HStack {
            Text(lableText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: lableImage)
        }
    }
}

// MARK: - PREVIEW

struct SettingsLableView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLableView(lableText: "Fructus", lableImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
