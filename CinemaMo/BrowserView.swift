//
//  BrowserView.swift
//  CinemaMo
//
//  Created by mohammed on 27/02/2024.
//

import SwiftUI

struct BrowserView: View {
    // Properties
    var movies: [MovieModel] = decode(file: "movies.json")
    @State var stackPath : [Int] = []
    
    var body: some View {
        NavigationStack(path: $stackPath){
            VStack{
                List {
                    
                    CoverView()
                        .frame(height: 235)
                    
                    ForEach(0..<movies.count , id: \.self) { index in
                        NavigationLink(value: index){
                            MovieCellView(movie: movies[index])
                        }
                    }
                    
                    HStack {
                        Spacer()
                        Image("camera")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 150)
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Text("All rights reserved")
                            .font(.footnote)
                        Spacer()
                    }
                }//: List
            }//: Vstack
            .navigationTitle("Browser")
            .navigationDestination(for: Int.self){ index in
                MovieDetailsView(movie: movies[index])
            }
        }//: NavigationStack
    }
}

#Preview {
    BrowserView()
}
