//
//  CoverView.swift
//  CinemaMo
//
//  Created by mohammed on 28/02/2024.
//

import SwiftUI

struct CoverView: View {
    //Properties
    let coverImages:[CoverModel] = decode(file: "covers.json")
    
    //Body
    var body: some View {
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFit()
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    CoverView()
}
