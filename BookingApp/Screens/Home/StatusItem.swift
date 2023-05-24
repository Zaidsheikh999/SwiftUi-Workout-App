//
//  StatusItem.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 03/04/2023.
//

import SwiftUI

struct StatusItem: View {
    
    @State var progress: Double = 76
    
    var body: some View {
        VStack(alignment: .leading,spacing: 15){
            HStack(spacing: 15){
                Image("flame")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .scaledToFit()
                    .cornerRadius(5)
                VStack(alignment: .leading, spacing: 4){
                    Text("Calories Loss")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.gray)
                    HStack(spacing: 15){
                        Text("12.182 Kcal")
                            .font(.system(size: 22, weight: .heavy))
                            .foregroundColor(.black)
                        
                        Text("+2,8%")
                            .font(.system(size: 14, weight: .light))
                            .foregroundColor(.green)
                    }
                }
                Spacer()
                
                ZStack {
                    
                    CircularProgressView(progress: progress,textColor: .black, fontSize: 10)
            
                }.frame(width: 35, height: 35)
            }
            .padding(edges: .horizontal, 15)
//            .padding(edges: .vertical, 15)
            .padding(edges: .top, 10)
            
            
            HStack(spacing: 15){
                Image("weight")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .scaledToFit()
                    .cornerRadius(5)
                VStack(alignment: .leading, spacing: 4){
                    Text("Weight Loss")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.gray)
                    HStack(spacing: 15){
                        Text("10.7 Kg")
                            .font(.system(size: 22, weight: .heavy))
                            .foregroundColor(.black)
                        
                        Text("+2,8%")
                            .font(.system(size: 14, weight: .light))
                            .foregroundColor(.green)
                    }
                }
                Spacer()
                
                ZStack {
        
                    CircularProgressView(progress: progress,textColor: .black, fontSize: 10)

                }.frame(width: 35, height: 35)
            }
            .padding(edges: .horizontal, 15)
//            .padding(edges: .vertical, 10)
            .padding(edges: .bottom, 10)
        }
        .frame(width: 333)
        .background(.white)
        .cornerRadius(10)
        .shadowStyle()
        
    }
}

//struct StatusItem_Previews: PreviewProvider {
//    static var previews: some View {
//        StatusItem()
//    }
//}
