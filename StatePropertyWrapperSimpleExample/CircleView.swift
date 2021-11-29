//
//  CircleView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Mateo Elosua on 2021-11-29.
//

import SwiftUI

struct CircleView: View {
    
    //MARK: Stored properties
    //@State is a "property wrapper"
    //"radius" is still just a property of the structure
    //The property wrapper alerts SwiftUI to the fact
    // that we want changes
    
    @State var radius: Double = 10.0
    
    //MARK: Computed properties
    var area: Double {
        return Double.pi * radius * radius
    }
    
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20) {
            
            
            //Imput
            Text("Radius:")
                .bold()
            
            //The syntax of $ says to use the property, radius and BIND it in this control
            Slider(value: $radius,
                   in: 0.0...100.0,
                   label: {
                
                        Text("Radius")
            },
                   minimumValueLabel: {
                Text("0.0")
            },
                   maximumValueLabel: {
                Text("100.0")
            })
            
            
            
            
            
            //Output
            Text("Area:")
                .bold()
            
            Text("314.2 square units")
            
            Spacer()
            
        
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        CircleView()
      }
   }
}
