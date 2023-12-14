//
//  ContentView.swift
//  Final Project
//
//  Created by Fabiola Rocha Marquez on 12/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.opacity(0.4).ignoresSafeArea()
                VStack {
                Text("Meditation App")
                    .font(.title)
                    .fontWeight(.bold)
              
            }
            .padding()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
