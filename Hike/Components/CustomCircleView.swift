//
//  CustomCircleView.swift
//  Hike
//
//  Created by Ahmad Ellashy on 03/11/2024.
//

import SwiftUI

struct CustomCircleView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [.colorIndigoMedium,.colorSalmonLight], startPoint: .topLeading, endPoint: .bottomTrailing))
            
            MotionCircleView()
        }
        .frame(width: 256,height: 256)
    }
}

#Preview {
    CustomCircleView()
}
