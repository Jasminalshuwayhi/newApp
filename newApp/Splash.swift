//
//  ContentView.swift
//  J App
//
//  Created by Jasmin Alshwayhi on 28/04/1447 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(){
            LinearGradient (gradient: Gradient (colors: [Color ("back1"),
                                            Color ("back2" )]), startPoint: .top, endPoint:.bottom)
                                            .ignoresSafeArea(edges: .all)
            
            
            VStack{
               
                Image("logo")
                    .resizable()
                    .frame(width: 132, height: 169)
                    .padding(19)
                Text("Journali")
                    .foregroundColor(Color("white"))
                    .font(.system(size: 42, weight: .black))
                    Text("Your thoughts, your story")
                    .foregroundColor(Color("white"))
                    .font(.system(size: 18, weight: .regular))
                    .padding(11)
                    
            }
        }
        

    
    }
}

#Preview {
    ContentView()
}
//
//LinearGradient (gradient:
//                                Gradient (colors: [Color ("back1"),
//                                Color ("back2" )]), startPoint: .top, endPoint:.bottom)
//                                .ignoresSafeArea(edges: .all))
