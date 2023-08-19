//
//  ContentView.swift
//  CharacterBoard-Doo
//
//  Created by Handoo Jeong on 2023/08/18.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            
            ThreadListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            SearchView()
                .tabItem() {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            CommunityView()
                .tabItem() {
                    Image(systemName: "person.2.fill")
                    Text("Community")
                }
            
            MyInfoView()
                .tabItem {
                    Image(systemName: "person")
                    Text("MyInfo")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
