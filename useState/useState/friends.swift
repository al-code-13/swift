//
//  friends.swift
//  useState
//
//  Created by Alejo Muñoz on 4/08/20.
//  Copyright © 2020 alcode. All rights reserved.
//

import Foundation
import SwiftUI

struct Friend: Identifiable {
    let id = UUID()
    let name : String
    let lastName : String
    let img : String
    let amigo : Bool
    
    
}
