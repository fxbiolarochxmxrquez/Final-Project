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
                NavigationLink("Start Session", destination: InstructionsView())
                
            }
            .padding()
            }
        }
    }
}

struct InstructionsView: View {
    @State private var isCenter = true
    @State private var isCenter2 = true
    var body: some View {
        ZStack{
            Color.blue.opacity(0.4).ignoresSafeArea()
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 100, height: 100)
                .foregroundStyle(Color.purple.opacity(0.7))
                .offset(x: isCenter ? 0 : 50)
                .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 100, height: 100)
                .foregroundStyle(Color.purple.opacity(0.7))
                .offset(x: isCenter ? 0 : -50)
                .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 100, height: 100)
                .foregroundStyle(Color.purple.opacity(0.7))
                .offset(y: isCenter ? 0 : 50)
                .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 100, height: 100)
                .foregroundStyle(Color.purple.opacity(0.7))
                .offset(y: isCenter ? 0 : -50)
                .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
            
            Text("Relax")
                .fontWeight(.bold)
        }
        .onAppear() {
            let animation = Animation.linear(duration: 4)
            withAnimation(animation.repeatForever(autoreverses: true)) {
                self.isCenter = false
                }
            withAnimation(animation.repeatForever(autoreverses: true)) {
                self.isCenter2 = false
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// https://www.youtube.com/watch?v=wVvJMIdT2Ko

