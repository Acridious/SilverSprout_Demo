//
//  HomePage.swift
//  SilverSprout_Demo
//
//  Created by Daniel Duong on 4/5/2023.
//

import SwiftUI

struct HomePage: View {
    @State private var changeMode = false
    
    
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                HStack{
                    Text("AQUAFLOW")
                        .font(.custom("Ubuntu-Regular", size:40))
                        .shadow(color: .white, radius: 1)
                        .shadow(color: .white, radius: 1)

                        .frame(maxWidth: 275, alignment: .leading)
                        .foregroundColor(.black)


                    NavigationLink{
                        Profile()
                    }label:{
                        Image(systemName: "person.circle").resizable()
                            .foregroundColor(Color(.white))
                            .frame(width:50,height:50)
                            .controlSize(.small)
                        
                    }
                }
                
                VStack{

                    HStack{
                        HStack{
                        Spacer()
                        Text("Mode: ")
                            .frame(maxWidth: 85, alignment: .leading)
                            .foregroundColor(.black)
                            .font(.system(size:28))
                        
                        if changeMode{
                            Text("Routine")
                                .foregroundColor(.blue)
                                .frame(maxWidth: 100)
                                .font(.system(size:28))
                        }
                            else{
                                Text("Manual")
                                    .foregroundColor(.red)
                                    .frame(maxWidth: 100)
                                
                                
                                    .font(.system(size:28))
                            }
                            Spacer()
                            Spacer()
                            Spacer()

                            
                            
                        }
                        Spacer()
                    }
                    .frame(minWidth:50, minHeight:75,alignment: .leading)
                
                    
                    //routine = True
                    //manual = False
                    List{
                        NavigationLink{
                            if changeMode{
                                ModeRoutine()
                            }
                            else{
                                ModeManual()
                            }
                            
                        } label:{
                            if changeMode{
                                VStack{
                                    Text("Front Garden\t\t\t\t\t\t")
                                        .font(.system(size:28))
                                    Text("OFF Next on: Today 8pm\t\t\t")
                                        .font(.system(size:24))
                                    Text("Last Completed: \(Date.now.formatted())")
                                        .font(.system(size:24))
                                }
                            }
                            else{
                                VStack{
                                    Text("Front Garden\t\t\t\t\t\t")
                                        .font(.system(size:28))
                                    Text("OFF Click to Control\t\t\t\t\t")
                                        .font(.system(size:24))
                                    Text("Last Completed: \(Date.now.formatted())")
                                        .font(.system(size:24))
                                }

                                
                            }
                        }
                        
                            .listRowBackground(Color("TextInputColor"))
                        
                        
                        NavigationLink{
                            if changeMode{
                                ModeRoutine()
                            }
                            else{
                                ModeManual()
                            }
                            
                        } label:{
                            if changeMode{
                                VStack{
                                    Text("Front Garden\t\t\t\t\t\t")
                                        .font(.system(size:28))
                                    Text("OFF Next on: Today 8pm\t\t\t")
                                        .font(.system(size:24))
                                    Text("Last Completed: \(Date.now.formatted())")
                                        .font(.system(size:24))
                                }
                            }
                            else{
                                VStack{
                                    Text("Front Garden\t\t\t\t\t\t")
                                        .font(.system(size:28))
                                    Text("OFF Click to Control\t\t\t\t\t")
                                        .font(.system(size:24))
                                    Text("Last Completed: \(Date.now.formatted())")
                                        .font(.system(size:24))
                                }

                                
                            }
                        }
                            .listRowBackground(Color("TextInputColor"))
                        
                            
                    }
                    .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color(.black)))
                    .scrollContentBackground(.hidden)
                    .foregroundColor(.black)



                }
                .frame(maxWidth:.infinity, maxHeight: 650)
                
                .background(Color(.white))

                    HStack{
                    Button(action: {
                        changeMode.toggle()
                        print("\(changeMode)")
                    },label:{
                        Image(systemName:"arrow.triangle.2.circlepath")
                            .resizable()
                            .tint(.black)

                            .frame(maxWidth: 50, maxHeight: 40)
                        
                        Text("MODE")
                            .font(.system(size:40))
                            .foregroundColor(.black)

                    })
                    .frame(minWidth: 80, minHeight: 75, alignment: .leading)
                        
                        
                    Divider()
                        .frame(minWidth: 3, maxHeight:100)
                        .overlay(Color.white)
                        //.background(Color.black)
                        
                    
                    NavigationLink("ADD")
                    {
                        AddStation()
                    }
                    
                    
                    .frame(minWidth: 100, minHeight: 50)
                    .font(.system(size:40))
                    .foregroundColor(.white)
                    
                    Image(systemName:"plus")
                        .resizable()
                        .foregroundColor(Color(.white))
                        .frame(maxWidth: 40, maxHeight: 40)

                    
                    
                }
                
                .frame(minWidth: 200, minHeight: 50)
                .ignoresSafeArea()

                
                
            }
            .background(Image("Blue_Light_Blue_Gradient_Color_and_Style_Mobile_Video_Background")            .resizable()
                        )
            
            .ignoresSafeArea()

            
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

    
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
    }

