//
//  ModeManual.swift
//  SilverSprout_Demo
//
//  Created by Daniel Duong on 15/5/2023.
//

import SwiftUI

struct ModeManual: View {
    var body: some View {
        VStack{
            Text("Mode: Manual")
            Spacer()
            
            HStack{
                Spacer()
            }
        }
        .background(Image("Blue_Light_Blue_Gradient_Color_and_Style_Mobile_Video_Background")            .resizable()
            .ignoresSafeArea())
    }
}

struct ModeManual_Previews: PreviewProvider {
    static var previews: some View {
        ModeManual()
    }
}
