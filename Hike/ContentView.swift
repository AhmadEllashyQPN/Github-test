//
//  ContentView.swift
//  Hike
//
//  Created by Ahmad Ellashy on 31/10/2024.
//

import SwiftUI

class Car: ObservableObject{
    @Published var name: String = "Ahmad"
    
    init(){
        print("observed vm here")
    }
    func changeCarName(newName: String){
        self.name = newName
    }
}

struct CarView:  View {
    @ObservedObject var vm = Car()
    @State var name = "emad"
    var body: some View {
        Color.red
            
    }
}

struct RandomNumberView: View {
   @State var randomNumber = 0

   var body: some View {
       VStack {
           Text("Random number is: \(randomNumber)")
           Button("Generate Random") {
               randomNumber = (0..<1000).randomElement()!
           }
       }.padding(.bottom)
       // Here, CounterView includes an @ObservedObject.
       CarView()
   }
}
#Preview{
    RandomNumberView()
}

struct ContentView: View {
    var body: some View {
        ZStack {
            CardView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
