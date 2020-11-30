//
//  NumRand.swift
//  Observed&EnviromentObject
//
//  Created by Alejo Muñoz on 6/08/20.
//  Copyright © 2020 alcode. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class NumRand: ObservableObject {
    
    @Published var num : Int = 0
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
            self.num = Int.random(in: 0 ..< 5)
        }
    }
}
