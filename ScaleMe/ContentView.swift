//
//  ContentView.swift
//  ScaleMe
//
//  Created by Ndayisenga Jean Claude on 24/05/2021.
//

import SwiftUI

struct ContentView: View {
    @State var currentScale: CGFloat = 0
    @State var finalScale: CGFloat = 1
    var body: some View {
        NavigationView {
            VStack {
                Text("Click To Zoom in/out")
                    .bold()
                    .font(.system(size: 32))
                    .padding()
                    .background(Color.pink)
                    .scaleEffect(finalScale + currentScale)
                    .gesture(MagnificationGesture().onChanged {
                        
                        newScale in currentScale = newScale
                    }.onEnded {
                        scale in
                        finalScale = scale
                        currentScale = 0
                    }
                )
            }
            .navigationTitle("Magnification Gesture")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
