//
//  CircleImage.swift
//  SitiosUI
//
//  Created by Alejo Muñoz on 27/07/20.
//  Copyright © 2020 alcode. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("patio")
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.white, lineWidth: 5))
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
