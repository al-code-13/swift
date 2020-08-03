//
//  MapaUI.swift
//  SitiosUI
//
//  Created by Alejo Muñoz on 27/07/20.
//  Copyright © 2020 alcode. All rights reserved.
//

import SwiftUI
import MapKit

struct MapaUI: UIViewRepresentable  {
        
    func makeUIView(context: UIViewRepresentableContext<MapaUI>)
        -> MKMapView {
            MKMapView(frame: .zero)
    }
    func updateUIView(_ uiView: UIViewType, context:
        UIViewRepresentableContext<MapaUI>){
        let coordenadas = CLLocationCoordinate2D(latitude: 74.1611702, longitude:4.6354644 )
        let ancho = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordenadas, span: ancho)
        uiView.setRegion(region, animated: true)
    }
    

}
