//
//  ModeRoutine.swift
//  SilverSprout_Demo
//
//  Created by Daniel Duong on 15/5/2023.
//

import SwiftUI

struct ModeRoutine: View {
    var body: some View {
        VStack{
            
            Text("Irrigation Control")
                .shadow(color: .white, radius: 1)
                .shadow(color: .white, radius: 1)
                .shadow(color: .white, radius: 1)                    .font(.custom("Ubuntu-Regular", size:36))                    .foregroundColor(.black)
                .padding(5)
            
            HStack{
                Spacer()
            }
            Spacer()
        }
        .background(Image("Blue_Light_Blue_Gradient_Color_and_Style_Mobile_Video_Background")            .resizable()
            .ignoresSafeArea())
    }
}

struct Auto: View {
    var body: some View {
        Text("Auto")
    }
}


struct Custom: View {
    var body: some View {
        Text("Custom")

    }
}



struct ModeRoutine_Previews: PreviewProvider {
    static var previews: some View {
        ModeRoutine()
    }
}
