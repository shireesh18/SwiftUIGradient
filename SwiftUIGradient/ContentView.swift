//
//  ContentView.swift
//  SwiftUIGradient
//
//  Created by Shireesh Marla on 03/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient:
            Gradient(
                colors: [
                    Color("mycolor"),
                    Color(.systemOrange),
                ]
            ),
                           startPoint: .top,
            endPoint: .bottom)
                .ignoresSafeArea(.all, edges: .all)
            
            VStack{
                Image(systemName: "sun.max.fill")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 220, height: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding()
                Text("Sunny!")
                    .font(.system(size: 42, weight: .semibold, design: .default))
                    .foregroundColor(.white)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
