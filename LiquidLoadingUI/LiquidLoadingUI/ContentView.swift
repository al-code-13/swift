//
//  ContentView.swift
//  LiquidLoadingUI
//
//  Created by Alejo Muñoz on 19/08/20.
//  Copyright © 2020 alcode. All rights reserved.
//

import SwiftUI

let lightBlue = Color(UIColor(red: 0.35, green: 0.80, blue: 0.93, alpha: 1.00))

struct DownloadindCircle: View {
    @State var time: Double = 0
    @State private var offsetY = 140.0
    @State private var animate = false
    @State private var label = "Downloading"
    
    let gradient = LinearGradient(gradient: Gradient(colors: [Color(.blue),lightBlue]),startPoint: .top,endPoint: .bottom)
    
    var body: some View {
        VStack{
            ZStack{
                CircleFluid(time: CGFloat(time+0.2))
                    .fill(lightBlue)
                    .frame(width: 250,height: 250)
                CircleFluid(time: CGFloat(time))
                    .fill(gradient)
                    .frame(width: 250,height: 250)
                    .opacity(0.5)
            }
            .offset(x: 0, y: CGFloat(self.offsetY))
            .mask(Circle().frame(width: 250,height: 250))
            
            Button(action: {self.animate.toggle()
                self.label = "Downloading..."
            }){
                Text(label)
                    .font(.largeTitle)
                    .foregroundColor(animate ?.black : .blue)
                
            }
            .disabled(animate ? true : false)
        }
        .onAppear{
            Timer.scheduledTimer(withTimeInterval: 0.02, repeats: true) { _ in
                self.time += 0.01
                if self.offsetY >= (-140){
                    if self.animate {
                        withAnimation(Animation.linear(duration: 0.03)) {
                            self.offsetY -= 0.5
                        }
                    }
                }else{
                    self.label = "Done"
                }
            }
        }
    }
}

struct CircleFluid: Shape {
    var time: CGFloat
    
    func path(in rect: CGRect) -> Path{
        return(
            Path { path in
                let curveHeight: CGFloat = 10
                let curveLength: CGFloat = 1.5
                
                path.move(to: CGPoint(x: 250, y: 500))
                path.addLine(to: CGPoint(x:0, y:500))
                
                for i in stride(from: 0, to: CGFloat(rect.width), by: 1){
                    path.addLine(to: CGPoint(x:i,
                                             y: sin(((i / rect.height) + time) * curveLength * .pi) * curveHeight + rect.midY))
                }
            }
        )
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadindCircle()
    }
}


