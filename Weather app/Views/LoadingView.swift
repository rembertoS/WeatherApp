//
//  LoadingView.swift
//  Weather app
//
//  Created by Remberto Silva on 3/4/25.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity , maxHeight: .infinity)
        
        
    }
}

#Preview {
    LoadingView()
}
