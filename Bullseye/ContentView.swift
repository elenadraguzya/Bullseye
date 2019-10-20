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
    
    
    var body: some View {
        VStack {
            Text("Welcome To My App")
                .foregroundColor(Color.red)
            Button(action: {
                print("Button Pressed")
                self.alertIsVisible = true
            }) {
                Text(/*@START_MENU_TOKEN@*/"Hit Me"/*@END_MENU_TOKEN@*/)
            }
            .alert(isPresented: $alertIsVisible) { () -> Alert in
                return Alert(title: Text("Hello There"), message: Text("This Is My Pop-Up"), dismissButton: .default(Text("Ok")))
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
