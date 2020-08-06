//
//  ContentView.swift
//  useState
//
//  Created by Alejo Muñoz on 4/08/20.
//  Copyright © 2020 alcode. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var friend = [Friend]()
    @State private var isFriend = false
    private func addFriends(){
        self.friend.append(Friend(name: "name1", lastName: "LastName1", img: "user1", amigo: true))
        self.friend.append(Friend(name: "name2", lastName: "LastName2", img: "user2", amigo: false))
        self.friend.append(Friend(name: "name3", lastName: "LastName3", img: "user3", amigo: true))
        self.friend.append(Friend(name: "name4", lastName: "LastName4", img: "user4", amigo: false))
    }
    init() {
        addFriends()
    }
    
    @State private var nombre = "XDXD"
    
    var body: some View {
        VStack{
            Text(nombre)
            Button(action: addFriends){
                Text("Cambio de nombre")
            }
            List{
                Toggle(isOn: self.$isFriend){
                    Text("Filtro Amigos")
                }
                ForEach(friend.filter{$0.amigo == self.isFriend}){ friends in
                    HStack{
                        Image(friends.img)
                        .resizable()
                        .frame(width: 70, height: 70)
                        
                        VStack(alignment:.leading){
                            Text(friends.name)
                                .font(.title)
                                .bold()
                            Text(friends.lastName)
                                .font(.subheadline)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
