//
//  GalleryView.swift
//  CinemaMo
//
//  Created by mohammed on 27/02/2024.
//

import SwiftUI

struct GalleryView: View {
    // MARK: - Properties
//    var layout : [GridItem] = [GridItem() , GridItem()]
    @State var layoutColums : Int = 2
    @State var layout : [GridItem] = Array(repeating: GridItem(), count: 2)
    let movies : [MovieModel] = decode(file: "movies.json")
    @State private var selectedImage = "moonfall"
    @State private var  buttonImage = "square.grid.3x2"
    @State var path : [String] = []
    
    //Functions
    
    func switchLayout(){
        if layoutColums == 1 {
            layoutColums = 2
            buttonImage = "square.grid.3x2"
        }else if layoutColums == 2 {
            layoutColums = 3
            buttonImage = "rectangle.grid.1x2"
        }else {
            layoutColums = 1
            buttonImage = "square.grid.2x2"
        }
        layout = Array(repeating: GridItem(), count: layoutColums)
    }
    
    // MARK: - Body
    var body: some View {
        
        NavigationStack(path: $path){
            VStack{
                Image(selectedImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .frame(height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(4)
                
                Divider()
                
                ScrollView{
                    LazyVGrid(columns: layout, content: {
                        ForEach(movies) { item in
                            Image(item.image)
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .onTapGesture {
                                    selectedImage = item.image
                                }
                        }
                        
                    })
                }
            }//: vstack
            .navigationTitle("Gallery")
            .toolbar(content: {
                ToolbarItem(placement:.topBarTrailing) {
                    Button(action: {
                        switchLayout()
                    }, label: {
                        Image(systemName: buttonImage)
                            .font(.title3)
                    })
                }
            })
        }//: navigation stack
    }
}

#Preview {
    GalleryView()
}
