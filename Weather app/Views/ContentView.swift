//
//  ContentView.swift
//  Weather app
//
//  Created by Remberto Silva on 2/18/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationmanager = LocationManager()
    
    var body: some View {
        VStack{
            
            if let location = locationmanager.location{
                Text("Your coordinates are:  \(location.longitude), \(location.latitude)" )
            }else{
                if locationmanager.isLoading{
                    LoadingView()
                }else{
                    WelcomeView().environmentObject(locationmanager)
                }
            
            }
                
            
        }
        .background(Color(hue: 0.676, saturation: 0.826, brightness: 0.516))
        .preferredColorScheme(.dark)
    }
}
    
struct ContentView_Previews:
    PreviewProvider{
    static var previews: some View{
        ContentView()
            
    }
}

    
