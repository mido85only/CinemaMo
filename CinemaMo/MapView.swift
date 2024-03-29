//
//  MapView.swift
//  CinemaMo
//
//  Created by mohammed on 27/02/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - Properties
//    static var coordinates = CLLocationCoordinate2D(latitude: 24.4539, longitude: 54.3773)
//    static var zoomLevel = MKCoordinateSpan(latitudeDelta: 4.0, longitudeDelta: 4.0)
//
//    @State var region: MKCoordinateRegion = MKCoordinateRegion(center: coordinates, span: zoomLevel)
//    
    
//    @State var region : MKCoordinateRegion = {
//         var coordinates = CLLocationCoordinate2D(latitude: 24.4539, longitude: 54.3773)
//         var zoomLevel = MKCoordinateSpan(latitudeDelta: 4.0, longitudeDelta: 4.0)
//        
//        var mRegion: MKCoordinateRegion = MKCoordinateRegion(center: coordinates, span: zoomLevel)
//        
//        return mRegion
//    } ()
    
    @State private var region : MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 24.4539, longitude: 54.3773), span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0))
    
    var cinemaLocations : [CinemaLocation] = decode(file: "locations.json")
    
    var body: some View {
        
//        Map(coordinateRegion: $region)
        
        // map with Pins
//        Map(coordinateRegion: $region, annotationItems: cinemaLocations) { item in
//            MapPin(coordinate: item.location)
//        }
        
        // map with markers
        
//        Map(coordinateRegion: $region, annotationItems: cinemaLocations) { item in
//            MapMarker(coordinate: item.location)
//        }
        
        // map with annotaion
        
//        Map(coordinateRegion: $region, annotationItems: cinemaLocations) { item in
//            MapAnnotation(coordinate: item.location) {
//                Image(item.image)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 50, height: 50, alignment: .center)
//                    .clipShape(Circle())
//            }
//        }
        
        Map(coordinateRegion: $region, annotationItems: cinemaLocations) { item in
            MapAnnotation(coordinate: item.location) {
                CinemaAnnotation(location: item)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    let locations : [CinemaLocation] = decode(file: "locations.json")
    return MapView(cinemaLocations: locations)
}
