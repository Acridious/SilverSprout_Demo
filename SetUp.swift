//
//  InfoPage.swift
//  SilverSprout_Demo
//
//  Created by Daniel Duong on 4/5/2023.
//

// Setup user going through views
// Should probably refactor this file....

import SwiftUI

struct SetUp: View {
    var body: some View {
        VStack {
            VStack{
                Spacer()
                    .frame(maxWidth:275, maxHeight: 50)
                
                Text("Information")
                    .shadow(color: .white, radius: 1)
                    .shadow(color: .white, radius: 1)
                    .shadow(color: .white, radius: 1)                    .font(.custom("Ubuntu-Regular", size:64))                    .foregroundColor(.black)
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
                NavigationLink("CONTINUE")
                {
                    EnterHouseNumber()
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
}

struct EnterHouseNumber: View {
    @State var houseNumber: String = ""
    @State var isNew: Bool = false
    var body: some View {
        
        VStack{
            VStack{
                Spacer()
                    .frame(maxWidth:275, maxHeight: 50)
            Text("Set Up")
                .shadow(color: .white, radius: 1)
                .shadow(color: .white, radius: 1)
                .shadow(color: .white, radius: 1)                .font(.custom("Ubuntu-Regular", size:64))                 .foregroundColor(.black)
                .padding(5)
            
            
            HStack{
                Spacer()
            }
            VStack{
                Text("Water Legislation")
                    .font(.custom("Ubuntu-Regular", size:40))
                    .foregroundColor(.blue)
                    .padding(15)
                
                
                Text("To find out your watering days, please enter your house number below:")
                    .foregroundColor(.black)
                    .font(.custom("Rokkitt-Regular", size:24))
                    .minimumScaleFactor(0.5)
                
                // Still allows users to  copy and paste text in!!
                TextField( text: $houseNumber){
                    Text("Enter house number").foregroundColor(.gray)
                }
                .textFieldStyle(.plain)
                .scrollContentBackground(.hidden)
                .multilineTextAlignment(.center)
                .background(Color("TextInputColor"))
                .foregroundColor(Color(.black))
                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y:16)
                
                .frame(minWidth:200, minHeight: 60)
                //  .frame(maxWidth:200, maxHeight: 150)
                
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.black, lineWidth: 2))
                
                .padding(15)
                
                
                .font(.custom("Rokkitt-Regular", size:24))
                .keyboardType(.decimalPad)
                
                
            }
            .background(Color(.white))
            .cornerRadius(15)
            .textFieldStyle(.roundedBorder)
            .onSubmit{
                //calculation(userday: houseNumber)
                print("testing")
            }
            
            Spacer()
            
            // prevent user from entering nothing
            if (self.houseNumber.isEmpty == false){
                NavigationLink("CONTINUE")
                {
                    WateringDays(selection: $houseNumber, myUser: $isNew)
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
                .background(Color(.white))
                .foregroundColor(.black)
                .cornerRadius(15)
                .font(.custom("Ubuntu-Regular", size:40))
                .disabled(self.houseNumber.isEmpty)
                
            }
            else{
                NavigationLink("CONTINUE")
                {
                    WateringDays(selection: $houseNumber, myUser: $isNew)
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
                .background(Color(.gray))
                .foregroundColor(.black)
                .cornerRadius(15)
                .font(.custom("Ubuntu-Regular", size:40))
                .disabled(self.houseNumber.isEmpty)
                
            }
            
            
            
        }
    }
        .padding()

        .background(Image("Blue_Light_Blue_Gradient_Color_and_Style_Mobile_Video_Background")            .resizable()
            .ignoresSafeArea())
        
    }
}


struct WateringDays: View {
    @Binding var selection: String
    @Binding var myUser: Bool
    var body: some View {
        if (myUser == false){
            VStack{
                VStack{
                    Spacer()
                        .frame(maxWidth:275, maxHeight: 50)
                
                Text("Almost Done!")
                    .shadow(color: .white, radius: 1)
                    .shadow(color: .white, radius: 1)
                    .shadow(color: .white, radius: 1)                    .font(.custom("Ubuntu-Regular", size:54))                 .foregroundColor(.black)
                    .padding(5)
                
                
                HStack{
                    Spacer()
                }
                VStack{
                    Text("Water Legislation")
                        .font(.custom("Ubuntu-Regular", size:40))
                        .foregroundColor(.blue)
                        .padding(15)
                    
                    
                    Text("Based on your house number, your watering days are: ")
                        .padding(15)
                        .foregroundColor(.black)
                        .font(.custom("Rokkitt-Regular", size:24))
                    
                    Text("\(calculation(userday: selection))")                //.frame(minWidth:200, minHeight: 150)
                        .padding(15)
                        .foregroundColor(.black)
                        .font(.custom("Rokkitt-Regular", size:24))
                    
                    
                }
                .background(Color(.white))
                .cornerRadius(15)
                
                Spacer()
                NavigationLink("CONTINUE")
                {
                    FinalSetup()
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
                .background(Color(.white))
                .foregroundColor(.black)
                
                .cornerRadius(15)
                .font(.custom("Ubuntu-Regular", size:40))
                
                
            }
        }
            .padding()
            
            .background(Image("Blue_Light_Blue_Gradient_Color_and_Style_Mobile_Video_Background")            .resizable()
                .ignoresSafeArea())
        }
    }
}

struct FinalSetup: View {
    var body: some View {
        VStack{
            VStack{
                Spacer()
                    .frame(maxWidth:275, maxHeight: 50)
            Text("Final Stage")
                .shadow(color: .white, radius: 1)
                .shadow(color: .white, radius: 1)
                .shadow(color: .white, radius: 1)                .font(.custom("Ubuntu-Regular", size:64))                 .foregroundColor(.black)
            
            HStack{
                Spacer()
            }
            VStack{
                Text("Connect your first station")
                    .font(.custom("Ubuntu-Regular", size:40))
                    .foregroundColor(.blue)
                    .padding(15)
                
                
                Text("Connect to a watering station via BlueTooth to begin")
                    .frame(minWidth:200, minHeight: 150)
                    .padding(15)
                    .foregroundColor(.black)
                    .font(.custom("Rokkitt-Regular", size:24))
                
            }
            .background(Color(.white))
            .cornerRadius(15)
            Spacer()
            NavigationLink("ADD STATION")
            {
                var user = User(newUser: true) //might cause bugs...!
                AddStation()
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .background(Color(.white))
            .foregroundColor(.black)
            
            .cornerRadius(15)
            .font(.custom("Ubuntu-Regular", size:40))             .padding(30)
            
            
            
            NavigationLink("Skip this step")
            {
                var user = User(newUser: true)
                HomePage()
            }
            .font(.system(size:24))
            .foregroundColor(.white)
            .overlay(Rectangle().frame(height: 1).offset(y:4), alignment: .bottom)
            
            
        }
    }
        .padding()

        .background(Image("Blue_Light_Blue_Gradient_Color_and_Style_Mobile_Video_Background")            .resizable()
            .ignoresSafeArea())
    }
}





struct InfoPage_Previews: PreviewProvider {
    static var previews: some View {
        SetUp()
    }
}
