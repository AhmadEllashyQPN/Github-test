//
//  MotionCircleView.swift
//  Hike
//
//  Created by Ahmad Ellashy on 03/11/2024.
//

import SwiftUI

struct MotionCircleView: View {
    
    //MARK: - Properties
    @State var isAnimating: Bool = false
    var body: some View {
        ZStack {
            ForEach(1...15, id:\.self) { i in
                Circle()
                    .foregroundStyle(Color.white)
                    .opacity(0.3)
                    .frame(width: randomSize())
                    .position(x: randomCoordinates(),y: randomCoordinates())
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    
            }
        }//:ZSTACK
        .frame(width: 256,height: 256)
        .clipShape(Circle())
        .onAppear(perform: {
            withAnimation(
                .spring.repeatForever()
                .speed(randomSpeed())
                .delay(randomDelay())
            ) {
                isAnimating.toggle()
            }
            
        })
        .mask(Circle())
        .drawingGroup()
    }
}

//MARK: - Functions
extension MotionCircleView{
    func randomCoordinates() -> CGFloat{
        return CGFloat.random(in: 0...256)
    }
    func randomSize() -> CGFloat{
        return CGFloat.random(in: 10...100)
    }
    func randomScale() -> CGFloat{
        return CGFloat.random(in: 0.2...0.8)
    }
    func randomSpeed() -> CGFloat{
        return CGFloat.random(in: 0.05...0.4)
    }
    func randomDelay() -> CGFloat{
        return CGFloat.random(in: 0...2)
    }
}



#Preview {
    ZStack(alignment:.center){
        Color.teal
        
        MotionCircleView()
        
        
    }
    .ignoresSafeArea()
    
    
}
