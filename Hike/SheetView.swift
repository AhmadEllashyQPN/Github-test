//
//  SheetView.swift
//  Hike
//
//  Created by Ahmad Ellashy on 11/11/2024.
//

import SwiftUI

struct SheetView: View {
    var gradinentColor: LinearGradient = LinearGradient(colors: [.colorGreenLight,.colorGreenMedium,.colorGreenDark], startPoint: .top, endPoint: .bottom)
    var body: some View {
        List{
            //MARK: - Header Section
            Section{
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80,weight: .black))
                    Text("Hike123")
                        .font(.system(size: 60,weight: .heavy))
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80,weight: .black))
                    Spacer()
                }
                .foregroundStyle(gradinentColor)
                
                //MARK: - Lables
                VStack(alignment:.center){
                    Text("Where can you find prefect tracks?")
                        .font(.system(size: 20,weight: .black))
                        .padding(.vertical,10)
                    Text("Hike is a very good app to enjoy all different aspects to all other fields to may need a lot of things to catch, now you can say that you are on the boat!")
                        .font(.footnote)
                        .italic()
                        .padding(.vertical,2)
                    Text("Now you can say that you hellow there here!")
                        .fontWeight(.bold)
                        .foregroundStyle(.colorGreenMedium)
                    
                }
                .multilineTextAlignment(.center)
                .padding(.bottom,20)
            }
            Section {
                SettingViewListRowItem(rowLabel: "Application", rowContent: "Hike", rowIcon: "apps.iphone", rowTintColor: .blue)
                SettingViewListRowItem(rowLabel: "Compatibility", rowContent: "IOS, IPadOS", rowIcon: "info.circle", rowTintColor: .red)
                SettingViewListRowItem(rowLabel: "Technology", rowContent: "Swift", rowIcon: "swift", rowTintColor: .orange)
                SettingViewListRowItem(rowLabel: "Version", rowContent: "1.0", rowIcon: "gear", rowTintColor: .purple)
                

            } header: {
                Text("About The App")
            } footer: {
                Spacer()
                Text("copyrights@ reserved")
                Spacer()

            }

        }//:List
        .listRowSeparator(.hidden)

    }
}

#Preview {
    SheetView()
}
