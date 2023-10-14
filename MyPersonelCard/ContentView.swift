//
//  ContentView.swift
//  MyPersonelCard
//
//  Created by Eren lifetime on 14.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09,green:0.63,blue:0.52)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("Eren")
                // resmi ortalar
                .resizable()
                // resmi düzeltir
                .aspectRatio(contentMode: .fit)
                .frame(width: 150.0,height: 200.0)
                .clipShape(Circle())
                // circle içindeki çemberin rengini gösterir.
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Eren Pekdemir")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                // yazı rengim texttim
                    .foregroundColor(.white)
                Text("iOS Developer")
                .foregroundColor(.white)
                .font(.system(size: 26))
                Divider()
                InfoView(text: "+05421873121", imageName: "phone.fill")
                InfoView(text: "kazmakürek@hotmail.com", imageName: "envelope.fill")
            }
        }
    }
        
}
#Preview {
    ContentView()
}
