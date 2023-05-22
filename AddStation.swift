//
//  AddStation.swift
//  SilverSprout_Demo
//
//  Created by Daniel Duong on 4/5/2023.
//

import SwiftUI

struct AddStation: View {
    @State private var selectItem: String?

    var body: some View {
        VStack{
            Spacer()
                .frame(maxWidth:275, maxHeight: 80)
            VStack {
                Text("Choose a station")
                    .shadow(color: .white, radius: 1)
                    .shadow(color: .white, radius: 1)
                    .shadow(color: .white, radius: 1)
                
                    .font(.custom("Ubuntu-Regular", size:46))                    .foregroundColor(.black)
                    .padding(5)
                Spacer()
                
                VStack{
                    Text("Available Devices")
                        .font(.custom("Ubuntu-Regular", size:32))
                        .foregroundColor(.blue)
                        .padding(15)
                    
                    
                    List{
                        NavigationLink("Sprinkler 1")
                        {
                            StationLocation()
                        }.listRowBackground(Color("TextInputColor"))
                        
                        
                        NavigationLink("Sprinkler 2")
                        {
                            StationLocation()
                        }.listRowBackground(Color("TextInputColor"))
                        
                        NavigationLink("Sprinkler 3")
                        {
                            StationLocation()
                        }.listRowBackground(Color("TextInputColor"))
                    }
                    .foregroundColor(.black)
                    // .overlay(RoundedRectangle(cornerRadius: 15, style: .circular).stroke(Color(.black), lineWidth: 1))
                    .scrollContentBackground(.hidden)
                    .background(Color("TextInputColor"))
                    
                    .environment(\.defaultMinListRowHeight, 70)
                    .frame(maxWidth:400, maxHeight:300)
                    .cornerRadius(15)
                }
                .frame(maxWidth:400, maxHeight:400)
                //.overlay(RoundedRectangle(cornerRadius: 15))
                
                .background(RoundedRectangle(cornerRadius: 15).fill(Color("TextInputColor")))
                
                
                .cornerRadius(15)
                
                Spacer()
                
                NavigationLink("Skip this step")
                {
                    HomePage()
                }
                .font(.system(size:24))
                .foregroundColor(.white)
                
                .overlay(Rectangle().frame(height: 1).offset(y:4), alignment: .bottom)

                
                
                HStack{
                    Spacer()
                }
            }
        }
            .padding()
            .background(Image("Blue_Light_Blue_Gradient_Color_and_Style_Mobile_Video_Background") .resizable()
                .ignoresSafeArea())
            
        
    }
}

struct StationLocation: View {
    @State var EnterLocation: String = ""
    var body: some View {
        VStack{
            Spacer()
                .frame(maxWidth:275, maxHeight: 80)

            VStack{
                
                Text("Where is your station located?")
                    .shadow(color: .white, radius: 1)
                    .shadow(color: .white, radius: 1)
                    .shadow(color: .white, radius: 1)
                    .font(.custom("Ubuntu-Regular", size:48))                 .foregroundColor(.black)
                    .padding(5)
                
                HStack{
                    Spacer()
                }
                VStack{
                    TextField( text: $EnterLocation){
                        Text("Enter station location").foregroundColor(.gray)
                    }
                    .textFieldStyle(.plain)
                    .scrollContentBackground(.hidden)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(.black))
                    .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y:16)
                    
                    .frame(minWidth:200, minHeight: 60)
                    //  .frame(maxWidth:200, maxHeight: 150)
                    
                    .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.black, lineWidth: 2))
                    
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color("TextInputColor")))
                    
                    .padding(15)
                    
                    .font(.custom("Rokkitt-Regular", size:24))
                    
                    Text("Entering a location will help you know which station you're controlling!")
                        .font(.custom("Rokkitt-Regular", size:24))
                        .foregroundColor(Color(.white))
                        .frame(maxWidth:275, minHeight: 175)
                    
                    
                    Spacer()
                    
                    NavigationLink("FINISH")
                    {
                        HomePage()
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    .background(Color(.white))
                    .foregroundColor(.black)
                    
                    .cornerRadius(15)
                    .font(.custom("Ubuntu-Regular", size:40))
                    .padding(30)
                    
                }
                //.background(Color("TextInputColor"))
                Spacer()
                
            }
        }
        .background(Image("Blue_Light_Blue_Gradient_Color_and_Style_Mobile_Video_Background")
            .resizable()
            .ignoresSafeArea())
    }
}

struct AddStation_Previews: PreviewProvider {
    static var previews: some View {
        AddStation()
    }
}
