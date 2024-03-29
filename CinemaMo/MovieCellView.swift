//
//  MovieCellView.swift
//  CinemaMo
//
//  Created by mohammed on 28/02/2024.
//

import SwiftUI

struct MovieCellView: View {
    //properties
    var movie: MovieModel
    
    //Body
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(movie.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 8, content: {
                Text(movie.name)
                    .font(.title3)
                    .foregroundStyle(.accent)
                Text(movie.headline)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
            })
        }
    }
}

#Preview {
    MovieCellView(movie: MovieModel.init(id: "sasdf", name: "men", headline: "asdfasfdasdf adfa asd asdf asfd adsf ", description: "asdfaf", link: "", image: "men-in-black", gallery: [], actor: []))
}
