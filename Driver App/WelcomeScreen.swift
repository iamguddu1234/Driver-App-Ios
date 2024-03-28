//
//  WelcomeScreen.swift
//  Driver App
//
//  Created by Akshay Bhasme on 13/03/24.
//

import SwiftUI

struct WelcomeScreen: View {
    

    
    var body: some View {
        
        
        
        NavigationView {
            VStack {
                ZStack(alignment: .top) {
                    Image("map")
                        .resizable()
                        .overlay(
                            LinearGradient(colors: [
                                Color.white.opacity(0.7),
                                Color.white.opacity(1)
                            ], startPoint: .topLeading, endPoint: .bottomLeading)
                        )

                    Image("wel")
                        .resizable()
                        .scaledToFit()
                        .ignoresSafeArea()
                        .alignmentGuide(.top) { _ in 0 }
                    
                    
                    

                    
                    VStack(alignment: .leading){
                        
                        
                        VStack(alignment: .leading){
                            
                            NavigationLink(destination:Main().navigationBarBackButtonHidden(true)){
                                
                      
                            Image(systemName: "arrow.left")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .frame(width: 24, height: 24)
                                .padding(.bottom)
                            }
                            
                            Text("Welcome to \nHotspot Drive")
                                .font(.system(size: 25))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                        }
                        .padding()
                        .padding(.vertical, 50)
                        
    Spacer()
                        Spacer()
                        
                        
                        
                        
                        MidView()
                       
                        Spacer()
                        Spacer()
                        
                        WelcomeBottomView()
                            .padding(.bottom)
                            .padding()
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)

                }
                .ignoresSafeArea()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }

    }
}

#Preview {
    WelcomeScreen()
}

struct WelcomeBottomView: View {
    var body: some View {
        VStack{
            
            
            NavigationLink(destination: Otp().navigationBarBackButtonHidden(true)) {
                
                    
                    Text("REGISTER")
                        .textCase(.uppercase)
                        .fontWeight(.semibold)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 45)
                        .background(.orange)
                        .foregroundColor(.white)
                        .cornerRadius(6)
                        .padding(.bottom)
                
            }
            
            
            
            HStack(alignment : .center) {
                Text("Already Register?")
                    .font(.system(size: 18))
                    .foregroundColor(.black.opacity(0.7))
                    .fontWeight(.light)
                
                
                
                Text("Login")
                    .font(.system(size: 18))
                    .foregroundColor(.orange)
                    .fontWeight(.medium)
                
                
            }
            
        }
    }
}

struct MidView: View {
    @State private var number = ""

    
    var body: some View {
        VStack{
            
            
            
            
            HStack(spacing: 10){
                Image(systemName: "iphone.gen1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
                    .padding(.leading)
                
                
                
                TextField("Enter your mobile number ", text: $number)
                    .padding(.horizontal, 2)
                    .foregroundColor(.black) // Change the color of the hint text
                    
                
            }
            .frame(maxWidth: .infinity, maxHeight: 45)
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
            )
            .background(.white)
            .cornerRadius(6)
            .multilineTextAlignment(.leading)
            .padding()
            .padding(.bottom)
            
            
            
            HStack{
                Image(systemName: "checkmark.square.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.orange)
                    .frame(maxWidth: 20, maxHeight: 20)
                
                Text("I agree with your")
                    .font(.system(size: 16))
                    .fontWeight(.light)
                    .foregroundColor(.black.opacity(0.7))
                
                Text("Terams & Agreement")
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                    .foregroundColor(.orange)
                
                
            }
            
        }
    }
}
