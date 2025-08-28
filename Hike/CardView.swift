//
//  CardView.swift
//  Hike
//
//  Created by Ahmad Ellashy on 31/10/2024.
//

import SwiftUI

struct CardView: View {
    //MARK: - Properties
    @State var randomNumber: Int = 1
    @State var imageNumber: Int = 1
    @State var isSheetOpened: Bool = false
    
    var body: some View {
        ZStack{
            CustomBackgroundView()
            
            VStack {
                //MARK: Header
                VStack{
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom))
                        
                        Text("Ahmad")
                            .font(.callout)
                        
                        Spacer()
                        
                        Button(action: {
                            withAnimation {
                                isSheetOpened.toggle()
                            }
                        }, label: {
                            ZStack {
                                Circle()
                                    .fill(LinearGradient(colors: [.white,.colorGreenLight,.colorGreenMedium], startPoint: .top, endPoint: .bottom))
                                    .frame(width: 40,height: 40)
                                Circle()
                                    .stroke(LinearGradient(colors: [.colorGrayLight,.colorGrayMedium], startPoint: .top, endPoint: .bottom),lineWidth: 4)
                                    .frame(width: 20,height: 20)
                                Image(systemName: "figure.hiking")
                                    .foregroundStyle(LinearGradient(colors: [.colorGrayLight,.colorGrayMedium], startPoint: .top, endPoint: .bottom))
                                    .font(.system(size: 25))
                                
                                Image(systemName: "figure.hiking")
                                    .foregroundStyle(LinearGradient(colors: [.colorGrayLight,.colorGrayMedium], startPoint: .top, endPoint: .bottom))
                                    .font(.system(size: 25))
                            }
                        })
                    }
                    .padding(.horizontal,10)
                    Text("Enjoy all of these things here mate, cause it's only one life you have.")
                        .foregroundStyle(.colorGrayMedium)
                        .multilineTextAlignment(.leading)
                        .italic()
                    
                    Button {
                        print("Ahmad Ellashy")
                    } label: {
                        Text("Ahmad Ellashy")
                    }
                    .frame(width: 100)
                    .background { Color.red }
                }
                .padding()
                
                //MARK: Picture
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeInOut(duration: 0.5), value: imageNumber)
                }
                
                //MARK: Footer
                Button {
                    generateNumber()
                } label: {
                    Text("Explore More")
                        .font(.system(size: 20,weight: .black))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.colorGreenLight,.colorGreenMedium],
                                startPoint: .top,
                                endPoint: .bottom
                            )//:Linear
                        )
                    
                    
                }
                .buttonStyle(GradiantColor())
                .frame(width: 50, height: 50, alignment: .center)
            }
        }
        .frame(width: 320,height: 570)
        .sheet(isPresented: $isSheetOpened) {
            SheetView()
                .presentationDragIndicator(.visible)
                .presentationDetents([.medium,.large])
        }
    }
}

//MARK: - Functions
extension CardView {
    func generateNumber(){
        repeat{
            randomNumber = Int.random(in: 1...5)
        }while randomNumber == imageNumber
        
        imageNumber = randomNumber
        
    }
}



#Preview {
    CardView()
        .padding()
}

