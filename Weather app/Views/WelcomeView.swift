//
//  WelcomeView.swift
//  Weather app
//
//  Created by Remberto Silva on 3/4/25.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var LocationManager: LocationManager
    

    var body: some View {
        VStack{
            VStack(spacing: 20){
                Text("Welcome to the Weather app")
                    .bold().font(.title)
                
                Text("Please Share your current location to get the weather in your area").padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation){
                LocationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
