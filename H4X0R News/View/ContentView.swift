//
//  ContentView.swift
//  H4X0R News
//
//  Created by Raj  on 19/06/22.
//

import SwiftUI

struct ContentView: View{
    @ObservedObject var networkManager =  NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.post){post in
                //Text(post.objectID)
                NavigationLink(destination: DetailView(url:post.url)){
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }

                }



            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
        
    }
       
            
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct post:Identifiable{
    
    var id:String
    var title:String
}


