//
//  ContentView.swift
//  Observed&EnviromentObject
//
//  Created by Alejo Muñoz on 6/08/20.
//  Copyright © 2020 alcode. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var num = NumRand()
    
    var body: some View {
        VStack {
            Text("\(self.num.num)")
                .font(.title)
                .bold()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
