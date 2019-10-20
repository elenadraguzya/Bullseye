//
//  ContentView.swift
//  Bullseye
//
//  Created by Elena Draguzya on 19.10.2019.
//  Copyright © 2019 Elena Draguzya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    @State var sliderValue: Double = 50.0
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text("Put the bullseye as close as you can to:")
                Text("100")
            }
            
            Spacer()
            HStack {
                Text("1")
                Slider(value: self.$sliderValue, in: 1...100)
                Text("100")
            }
            
            Spacer()
            Button(action: {
                print("Button Pressed")
                self.alertIsVisible = true
            }) {
                Text(/*@START_MENU_TOKEN@*/"Hit Me"/*@END_MENU_TOKEN@*/)
            }
            .alert(isPresented: $alertIsVisible) { () -> Alert in
                let roundedValue: Int = Int(self.sliderValue.rounded())
                return Alert(title: Text("Hello There"), message: Text("The slider's value is \(roundedValue)."), dismissButton: .default(Text("Ok")))
            }
            
            Spacer()
            HStack {
                Button(action: {}) {
                    Text("Start Over")
                }
                Spacer()
                Text("Score:")
                Text("999999")
                Spacer()
                Text("Round:")
                Text("999")
                Spacer()
                Button(action: {}) {
                    Text("Info")
                }
            }
            .padding(.bottom, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
