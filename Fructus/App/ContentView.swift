//
//  ContentView.swift
//  Fructus
//
//  Created by bui khac lam on 16/03/2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTiES
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = FruitsData
    
    //MARK: - BODY
    var body: some View {
        NavigationStack{
            List {
                ForEach(fruits){ item in
                    NavigationLink(
                        destination: FruitsDetailView(fruit: item)) {
                                            FruitRowView(fruit: item)
                                                .padding(.vertical, 4)
                                        }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing: Button(
                    action: {
                        isShowingSettings = true
                    }
                ){
                    Image(systemName: "slider.horizontal.3")
                }//: BUTTON
                    .sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
            )
        }//: NAVIAGTION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: FruitsData)
    }
}
