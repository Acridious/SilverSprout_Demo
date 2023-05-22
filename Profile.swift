//
//  Profile.swift
//  SilverSprout_Demo
//
//  Created by Daniel Duong on 4/5/2023.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
            HStack{
                Text("PROFILE").padding()
                    .font(.custom("Ubuntu-Regular", size:40))
                    .foregroundColor(.black)
                    .frame(minWidth: 200, maxHeight: 50, alignment: .center)

                
                Spacer()
                    .frame(maxWidth: 125, maxHeight: 35)
                
                NavigationLink{
                    HomePage()
                } label: {Image(systemName:"xmark")
                        .resizable()
                        .foregroundColor(Color(.black))
                        .frame(maxWidth: 35, maxHeight: 35, alignment: .trailing)
                
            }
                Spacer()

            
        }
            .frame(minWidth: 400, maxHeight: 100)
            .ignoresSafeArea()
            
            //.frame(minWidth: 500, minHeight: 100)
            .background(RoundedRectangle(cornerRadius: 0).fill(Color("TextInputColor")).opacity(0.5).ignoresSafeArea())

            
            Spacer()
                .frame(maxWidth:275, maxHeight: 50)
            
            VStack{
                
                HStack{
                    
                    VStack{
                        Text(Image(systemName: "info"))
                            .imageScale(.large)
                            .foregroundColor(.blue)

                        NavigationLink{
                            WaterLegislation()
                        } label: {
                            Text("View Water\nLegislation")
                        }
                        .font(.custom("Rokkitt-Regular", size:25))
                        .foregroundColor(.black)
                        .padding(15)
                        .frame(minWidth: 60, minHeight: 60)
                        
                    }
                    .frame(minWidth: 200, minHeight: 200)
                    .cornerRadius(15)
                    .background(RoundedRectangle(cornerRadius: 0).fill(Color("TextInputColor")).opacity(0.7).ignoresSafeArea())
                    
                    
                    VStack{
                        Image(systemName: "house")
                            .imageScale(.large)
                            .foregroundColor(.blue)

                        NavigationLink{
                            //EnterHouseNumber()
                        } label: {
                            Text("Change House\nNumber")
                        }
                        .font(.custom("Rokkitt-Regular", size:25))
                        .foregroundColor(.black)
                        .padding(15)
                        .frame(minWidth: 60, minHeight: 60)
                        
                        
                    }
                    .frame(minWidth: 200, minHeight: 200)
                    .cornerRadius(15)

                    .background(RoundedRectangle(cornerRadius: 0).fill(Color("TextInputColor")).opacity(0.7).ignoresSafeArea())
                }
            
            }
            Spacer()
        }
        .padding()
        .background(Image("Blue_Light_Blue_Gradient_Color_and_Style_Mobile_Video_Background") .resizable()
            .ignoresSafeArea())
        
        .navigationBarBackButtonHidden(true)
    }
    
}

struct WaterLegislation: View {
    var body: some View {
            VStack {
                Text("Information")
                    .font(.custom("Ubuntu-Regular", size:64))                    .foregroundColor(.black)
                    .padding(5)


                HStack{
                    Spacer()
                }
                
                VStack{
                    Text("Water Legislation")
                        .font(.custom("Ubuntu-Regular", size:40))
                        .foregroundColor(.blue)
                        .padding(15)

                    
                    Text("Due to Water Corporation's Legislation, watering days are limited to two days a week.\n\nFind more information [here.](https://www.watercorporation.com.au/Waterwise/Watering-days/Check-your-watering-days)")
                        .frame(minWidth:200, minHeight: 150)

                        .padding(15)
                        .foregroundColor(.black)
                        .font(.custom("Rokkitt-Regular", size:24))


                }
                .background(Color(.white))
                .cornerRadius(15)


                Spacer()
                NavigationLink("DISMISS")
                {
                    Profile()
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
                .background(Color(.white))
                .foregroundColor(.black)
                .cornerRadius(15)
                .font(.custom("Ubuntu-Regular", size:40))

            }
            .padding()
            .background(Image("Blue_Light_Blue_Gradient_Color_and_Style_Mobile_Video_Background")            .resizable()
                .ignoresSafeArea())
        
        }
    }

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
