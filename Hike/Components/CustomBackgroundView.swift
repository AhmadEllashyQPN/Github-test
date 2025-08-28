//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Ahmad Ellashy on 31/10/2024.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack{
            
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y:12)
            
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y:4)
                .opacity(0.85)
            
            LinearGradient(
                colors: [.colorGreenLight,.colorGreenMedium],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
                
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
