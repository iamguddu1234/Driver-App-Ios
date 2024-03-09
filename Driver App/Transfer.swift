//
//  Transfer.swift
//  Driver App
//
//  Created by Akshay Bhasme on 11/03/24.
//

import SwiftUI

struct Transfer: View {
    
    @State private var number = ""
    
    var body: some View {
        VStack{
            
            
            
            TopBar2()
              
            
            Image("cash")
                .resizable()
                .scaledToFit()
            
            
            Text("Lorem ipsum dolor sote amet  dummy laanguage paragraph for add balance instruction ")
                .multilineTextAlignment(.center)
                .font(.system(size: 18))
                .fontWeight(.regular)
                .foregroundColor(.gray.opacity(0.9))
                .padding(.horizontal)
                .padding(.bottom)
            
            
            HStack(spacing: 10){
                Image(systemName: "banknote.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
                    .padding(.leading)
                
                
                
                TextField("Enter Amount", text: $number)
                    .padding(.vertical,14)
                    .padding(.horizontal, 2)
                
            }
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
            .padding(.bottom, 6)
            .padding(.horizontal)
            .padding(.top)
            
            
            Spacer()
            Spacer()
            
            
            Text("Transfer")
                .textCase(.uppercase)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 44)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(6)
            
                .padding(.vertical, 30)
                .padding(.horizontal)
             
            
            
        }
        .background(.white)
    }
}

#Preview {
    Transfer()
}


struct TopBar2: View {
    var body: some View {
        HStack(alignment: .center){
            
            Image(systemName: "arrow.backward")
                .resizable()
                .scaledToFit()
                .frame(width: 18, height: 18)
            
            Text("Transfer")
                .font(.system(size: 18))
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(.horizontal, 10)
            Spacer()
            
            
            Image(systemName: "beats.headphones")
                .resizable()
                .frame(width: 16, height: 16)
            Text("Help")
                .font(.system(size: 15))
                .foregroundColor(.black)
            
            
        }
        .padding(.horizontal, 30)
        .padding(.bottom, 20)
        .background(.white)
        .shadow(color: Color.gray.opacity(0.09), radius: 1 ,x: 0.0,y:3)
    }
}
