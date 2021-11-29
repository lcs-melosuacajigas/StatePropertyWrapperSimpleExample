//
//  ContentView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Mateo Elosua on 2021-11-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: <#T##CGFloat?#>) {
            
            
            //Imput
            Text("Radius:")
                .bold()
            
            
            TextField("Radius",
                      text: .constant(""),
                      prompt: Text("e.g. : 24,5"))
            
            
            //Output
            Text("Area:")
                .bold()
            
            Text("")
            
            Spacer()
            
        
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        ContentView()
      }
   }
}
