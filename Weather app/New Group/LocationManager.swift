//
//  LocationManager.swift
//  Weather app
//
//  Created by Remberto Silva on 2/18/25.
//

import Foundation
import CoreLocation


class LocationManager: NSObject, ObservableObject,CLLocationManagerDelegate {
    
    let manager = CLLocationManager()
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    
    override init(){
        super.init()
        manager.delegate = self
    }
    func requestLocation (){
        isLoading = true
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = false
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error){
        print("Error getting location", error)
        isLoading = false
    }
}
            
            
            
