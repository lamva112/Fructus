//
//  SourceLinkView.swift
//  Fructus
//
//  Created by bui khac lam on 19/05/2023.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("content source")
                Spacer()
                Link("Wikimedia",destination: URL(string: "https://vi.wikipedia.org/wiki/Trang_Ch%C3%ADnh")!)
                Image(systemName: "arrow.up.right.square")
            }
        }
        .font(.footnote)
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
    
