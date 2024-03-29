//
//  ContentView.swift
//  CinemaMo
//
//  Created by mohammed on 27/02/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            BrowserView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Brows")
                }
            TrailerView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Trailers")
                }
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
        }
    }
}

#Preview {
    MainView()
}
