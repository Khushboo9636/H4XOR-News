//
//  ContentView.swift
//  H4XOR News
//
//  Created by Khushboo on 13/09/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetwokManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            
            .navigationBarTitle("H4XOR NEWS")
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


/*let posts = [
 Post(id: "1", title: "heloo"),
 Post(id: "2", title: "khush"),
 Post(id: "3", title: "khushbo")
 
 ]
 */
