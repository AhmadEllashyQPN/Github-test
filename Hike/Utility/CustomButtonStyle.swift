//
//  CustomButtonStyle.swift
//  Hike
//
//  Created by Ahmad Ellashy on 01/11/2024.
//

import Foundation
import SwiftUI

struct GradiantColor: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.horizontal)
            .padding(.vertical,12)
            .background(
                configuration.isPressed ?
                LinearGradient(
                    colors: [.colorGrayLight,.colorGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom
                )
                :
                LinearGradient(
                    colors: [.colorGrayMedium,.colorGrayLight],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .clipShape(RoundedRectangle(cornerRadius: 40.0))
            
    }
}


