//
//  ContentView.swift
//  SitiosUI
//
//  Created by Alejo Muñoz on 27/07/20.
//  Copyright © 2020 alcode. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapaUI()
                .frame(height:300)
                .edgesIgnoringSafeArea(.top)
            CircleImage()
                .offset(y:-130)
                .padding(.bottom,-130)
            VStack(alignment: .leading){
                Text("Patio Bonito")
                HStack {
                    Text("Kennedy")
                        .font(.subheadline)
                    Spacer()
                    Text("Colombia")
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                }
                Spacer()
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
