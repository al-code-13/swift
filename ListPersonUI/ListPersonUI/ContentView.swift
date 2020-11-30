//
//  ContentView.swift
//  ListPersonUI
//
//  Created by Alejo Muñoz on 3/08/20.
//  Copyright © 2020 alcode. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI
import Alamofire
import SwiftyJSON

struct ContentView: View {
    
    @ObservedObject var obs = observer()
    
    var body: some View {
        
        NavigationView{
            
            List(obs.datas, id:\.name){i in
                
                cards(name: i.name, url: i.url)
            }.navigationBarTitle("XD")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class observer : ObservableObject{
    @Published var datas = [dataType]()
    init() {
        AF.request("https://api.github.com/users/hadley/orgs").responseData {
            (data) in
            let json = try! JSON(data: data.data!)
            
            for i in json{
                self.datas.append(dataType(id: i.1["id"].intValue, name: i.1["login"].stringValue, url: i.1["avartar_url"].stringValue))
            }
            print(self.datas)
        }
    }
}

struct dataType : Decodable {
    var id : Int
    var name: String
    var url : String
}

struct cards: View {
    var name = ""
    var url = ""
    
    var body: some View{
        HStack{
            AnimatedImage(url:URL(string: url)!).resizable().frame(width: 60, height: 60).clipShape(Circle()).shadow(radius: 20)
            Text(name).fontWeight(.heavy)
            
        }
    }
}



