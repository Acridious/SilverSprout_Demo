//
//  ContentView.swift
//  SilverSprout_Demo
//
//  Created by Daniel Duong on 4/5/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                Text("WELCOME")
                    .font(.custom("Ubuntu-Regular", size:64))
                    .foregroundColor(.black)

                
                Text("to AQUAFLOW")
                    .font(.custom("Ubuntu-Regular", size:36))
                    .foregroundColor(.black)

                
                Text("An Irrigation Controller System Application")

                    .font(.custom("Rokkitt-Regular", size:26))
                    .foregroundColor(Color(.white)).padding(10)
                    .shadow(color: .white, radius: 0.4)
                    .shadow(color: .white, radius: 0.4)
                    .multilineTextAlignment(.center)

                
                HStack()
                {
                    Spacer()
                }
                Spacer()
                NavigationLink("START")
                {
                    SetUp()
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
                .background(Color(.white))
                .foregroundColor(.black)
                .cornerRadius(15)

                .font(.custom("Ubuntu-Regular", size:40))                 .frame(width:200, height: 50, alignment: .center)
                Spacer()


            }
            .padding()
            .background(Image("Blue_Light_Blue_Gradient_Color_and_Style_Mobile_Video_Background")            .resizable()
                .ignoresSafeArea())
            
            
        }



    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
