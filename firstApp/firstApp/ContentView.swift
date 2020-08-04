//
//  ContentView.swift
//  firstApp
//
//  Created by Alejo Muñoz on 4/08/20.
//  Copyright © 2020 alcode. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert: Bool = false
    @State private var showActionSheet = false
    var alert : Alert{
        Alert(title: Text("Alerta"), message: Text("Soy una alert"), dismissButton: .default(Text("Aceptar"),action: {
            print("Primer Alerta")
        }))
    }
    var actionSheet : ActionSheet{
        ActionSheet(title: Text("Menu"), message: Text("Selecciona Algo"), buttons:  [
            .default(Text("Galeria"),action: {
                print("Open Galery")
                debugPrint("QUIBOO")
            }),
            .default(Text("Camara")),
            .cancel(Text("Cancelar"))
        ]   )
    }
    var body: some View {
        VStack(alignment: .center, spacing: 8){
            Image("yo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                .frame(width: 250, height: 250)
            
            Text("Alejandro Muñoz")
                .font(.largeTitle)
                .foregroundColor(.blue)
            Text("Desarrollador móvil")
                .font(.subheadline)
                .foregroundColor(.gray)
                .bold()
            Spacer()
            HStack(alignment: .center, spacing: 18) {
                Button(action:{
                    self.showAlert.toggle()
                }){
                    HStack{
                        // Spacer()
                        Image(systemName: "rectangle.grid.1x2.fill")
                            .foregroundColor(.white)
                        Text("Alerta")
                            .foregroundColor(.white)
                            .font(.headline)
                        //  Spacer()
                    }.padding()
                }.background(Color.blue)
                    .cornerRadius(20)
                    .alert(isPresented: self.$showAlert) { () -> Alert in
                        self.alert
                }
                
                Button(action:{
                    self.showActionSheet.toggle()
                }){
                    HStack{
                        // Spacer()
                        Image(systemName: "folder.fill")
                            .foregroundColor(.white)
                        Text("Action Sheet")
                            .foregroundColor(.white)
                            .font(.headline)
                        //  Spacer()
                    }.padding()
                }.background(Color.red)
                    .actionSheet(isPresented: self.$showActionSheet) { () -> ActionSheet in
                        self.actionSheet
                }
            }
        }.padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
