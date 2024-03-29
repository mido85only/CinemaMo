//
//  MovieDetailsView.swift
//  CinemaMo
//
//  Created by mohammed on 11/03/2024.
//

import SwiftUI

struct MovieDetailsView: View {
    // MARK: - Properties
    var movie : MovieModel
    
    // MARK: - Body
    var body: some View {
        ScrollView(showsIndicators: false){
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                Image(movie.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 235 , alignment: .center)
                
                TitleHeaderView(titleImage: "person", titleText: "Actors")
                
                List{
                    ForEach(movie.actor , id: \.self){ act in
                        Text(act)
                    }
                }
                .listStyle(InsetGroupedListStyle())
                .frame(minWidth: 200, idealWidth: 200, minHeight: 200)
                
                TitleHeaderView(titleImage: "photo.on.rectangle.angled", titleText: "Movie images")
                
                ScrollView(.horizontal , showsIndicators: false){
                    HStack{
                        ForEach(movie.gallery , id: \.self ) { item in
                            Image(item)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 375)
                        }
                    }
                }//: ScrollView
                
                TitleHeaderView(titleImage: "ellipsis.circle", titleText: "More about..")
                
                Text(movie.description)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                
                GroupBox{
                    HStack{
                        Image(systemName: "globe")
                        Text("Movie website")
                        Spacer()
                        
                        Group{
                            Image(systemName: "arrow.up.right.square")
                            Link(movie.name, destination: URL(string: movie.link) ?? URL(string: "https://google.com")!)
                        }
                        .foregroundStyle(.accent)
                    }
                }
            }
            .padding(8)
        }
        .navigationTitle(movie.name)
    }
}

#Preview {
    let movies:[MovieModel] = decode(file: "movies.json")
    return MovieDetailsView(movie: movies[7])
}

struct TitleHeaderView: View {
    // MARK: - Properties
    var titleImage: String
    var titleText: String
    
    var body: some View {
        HStack{
            Image(systemName: titleImage)
                .foregroundStyle(.accent)
                .imageScale(.large)
            
            Text(titleText)
                .font(.title3)
                .fontWeight(.bold)
        }
    }
}
