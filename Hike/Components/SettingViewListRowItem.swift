//
//  SettingViewListRowItem.swift
//  Hike
//
//  Created by Ahmad Ellashy on 06/12/2024.
//

import SwiftUI

struct SettingViewListRowItem: View {
    //MARK: - PROPERTIES
    @State var rowLabel: String
    @State var rowContent: String
    @State var rowIcon: String
    @State var rowTintColor: Color
    
    var body: some View {
        LabeledContent{
            Text(rowContent)
                .fontWeight(.heavy)
        }label: {
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 30,height: 30)
                        .foregroundStyle(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }    }
}

#Preview {
    List() {
        SettingViewListRowItem(rowLabel: "Application", rowContent: "Hike", rowIcon: "apps.iphone", rowTintColor: .blue)
    }
}
