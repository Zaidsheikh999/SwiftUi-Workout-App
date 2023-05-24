//
//  StatusTop.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 05/04/2023.
//

import SwiftUI

struct StatusTop: View {
    var body: some View {
        HStack(){
            VStack(alignment: .center){
                Image("track")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 155,height: 155)
                    .padding(edges: .horizontal,10)
                    .padding(edges: .vertical,10)
                    .cornerRadius(15)
                    .shadowStyle()
                
                }
                .frame(width: 170, height: 170)
                .background(Color.black.opacity(0.3))
                .cornerRadius(15)
                .padding(edges: .vertical,10)
                .padding(edges: .leading,15)
                .shadowStyle()
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 5){
                
                Text("4,908")
                    .foregroundColor(.white)
                    .font(.system(size: 20,weight: .bold, design: .default))
                Text("Step")
                    .foregroundColor(.gray)
                    .font(.system(size: 16,weight: .light, design: .default))
                Text("1.234 Kcal")
                    .foregroundColor(.white)
                    .font(.system(size: 20,weight: .bold, design: .default))
                Text("Cal Burn")
                    .foregroundColor(.gray)
                    .font(.system(size: 16,weight: .light, design: .default))
                Text("289 BPM")
                    .foregroundColor(.white)
                    .font(.system(size: 20,weight: .bold, design: .default))
                Text("Heartbeat")
                    .foregroundColor(.gray)
                    .font(.system(size: 16,weight: .light, design: .default))
                
                }
                .padding(edges: .vertical,20)
                .padding(edges: .trailing,40)
            
            }
            .frame(width: 350, height: 200)
            .background(Color.black.opacity(0.7))
            .cornerRadius(25)
            .shadowStyle()
        }
    }

//struct StatusTop_Previews: PreviewProvider {
//    static var previews: some View {
//        StatusTop()
//    }
//}
