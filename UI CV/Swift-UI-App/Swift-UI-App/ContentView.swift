//
//  ContentView.swift
//  Swift-UI-App
//
//  Created by Alejo Muñoz on 16/07/20.
//  Copyright © 2020 alcode. All rights reserved.
//

import SwiftUI
import Alamofire
import AlamofireImage

struct ContentView: View {
    // MARK: - Variables
    @State private var imageIcon = Image(systemName: "link")
    @State private var myImage = Image("Alejo")
    private var url = "https://www.iconfinder.com/data/icons/logos-3/504/Swift-2-512.png"
    
    
    //MARK: - Body
    var body: some View {
        VStack (alignment: .center, spacing: 10){
            Text("Hello, World").font(.title).foregroundColor(.blue)
            Text("Desarrollador iOS").font(.body).lineLimit(nil).multilineTextAlignment(.center)
            myImage
                .frame(width: 200.0, height: 200.0)
                .clipShape(Circle())
                .shadow(radius: 30)
                .overlay(Circle().stroke(Color.blue,lineWidth: 3))
                .padding(.top, 30.0)
            Button(action: {
                
                /*
                 AF.request(self.url,method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil,interceptor: nil).response {
                 (responseDAta) in
                 debugPrint(responseDAta)
                 self.myImage.set
                 }
                 */
                
                AF.request(self.url).responseImage (completionHandler:{ (response) in
                    debugPrint(response)
                    self.myImage = UIImage
                    self.myImage? = UIImage(data: response.result.value!, scale: 1.0)
                    
                })
            }){
                imageIcon.resizable().frame(width:30,height: 30)
                
            }.foregroundColor(.gray)
        }.padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


