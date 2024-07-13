//
//  ContentView.swift
//  OrangeUnlimited
//
//  Created by Avi Patangay on 7/13/24.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var passcode = ""
    @State private var WrongUsername = 0
    @State private var WrongPasscode = 0
    @State private var Showing = false
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue.ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white)
                    .opacity(0.15)
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                VStack{
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300.0, height: 50.0)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width:  CGFloat(WrongUsername))
                    SecureField("Passcode", text: $passcode)
                        .padding()
                        .frame(width: 300.0, height: 50.0)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width:  CGFloat(WrongPasscode))
                    
                    
                    
                    Button("Login") {
                        
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 300.0, height: 50.0)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: ZStack{
                  
                        
                        
                        
                        
                        
                        
                        
                        
                    }, isActive: $Showing
                    ){
                     EmptyView()
                    }
                }
                     

                                    
                
                
               
            }
            
            .navigationBarHidden(true)
}
    }
}

#Preview {
    ContentView()
}
