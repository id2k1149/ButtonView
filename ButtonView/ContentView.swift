//
//  ContentView.swift
//  ButtonView
//
//  Created by Max Franz Immelmann on 4/19/23.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    
    var body: some View {
        VStack {
            Text("counter = \(counter)")
                .font(.largeTitle)
                .padding(.top, 100)
        
            HStack {
                ButtonView(title: "Increment",
                           counter: $counter)
                ButtonView(title: "Reset",
                           counter: $counter)
            }
            .padding(.top, 100)
            
            
        }
        .padding()
    }
}

struct ButtonView: View {
    var title: String
    
    @Binding var counter: Int
    
    func increment() {
        self.counter += 1
    }
    
    func reset() {
        self.counter = 0
    }
    
    var body: some View {
        Button(action: {
            switch title {
            case "Increment":
                self.increment()
            default:
                self.reset()
            }
        }, label: {
            Text(title)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

