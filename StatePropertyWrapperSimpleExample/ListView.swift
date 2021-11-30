//
//  ListView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Mateo Elosua on 2021-11-30.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            NavigationLink(destination: {
                CircleView()
            }, label: {
                Text("Circle")
            })
            
            
            
            NavigationLink(destination: {
                RectangleShapeView()
            }, label: {
                Text("Rectangle")
            })
        }
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
