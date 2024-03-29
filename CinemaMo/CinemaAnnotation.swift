//
//  CinemaAnnotation.swift
//  CinemaMo
//
//  Created by mohammed on 16/03/2024.
//

import SwiftUI

struct CinemaAnnotation: View {
    
    var location : CinemaLocation
    @State private var animation : Double = 0.0
    
    
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            Circle()
                .stroke(Color.accentColor , lineWidth: 2)
                .frame(width: 50, height: 50, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
        }
        .onAppear(perform: {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        })
    }
}

#Preview {
    
    let locations : [CinemaLocation] = decode(file: "locations.json")
    
    return CinemaAnnotation(location: locations[0])
}
