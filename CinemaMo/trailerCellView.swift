//
//  trailerCellView.swift
//  CinemaMo
//
//  Created by mohammed on 11/03/2024.
//

import SwiftUI

struct trailerCellView: View {
    
    // MARK: - properties
    
    var trailer:TrailerModel
    
    var body: some View {
        HStack(alignment:.center , spacing: 16){
            ZStack{
                Image(trailer.thumbnail)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32 , alignment: .center)
                    .shadow(radius: 4)
            }
            VStack(alignment:.leading , spacing: 8){
                Text(trailer.name)
                    .font(.title3)
                    .foregroundStyle(.accent)
                    .layoutPriority(1)
                
                Text(trailer.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
            }
        }
    }
}

#Preview {
    let trailers : [TrailerModel] = decode(file: "trailers.json")
    return trailerCellView(trailer: trailers[7])
}
