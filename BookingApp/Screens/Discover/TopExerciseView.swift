//
//  TopExerciseView.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 04/04/2023.
//

import SwiftUI

struct TopExerciseView: View {
    
    @ObservedObject var vm = DiscoverVM()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 15){
                ForEach(vm.popular){popular in
                    ZStack(){
                        Image(popular.bannerImage!)
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 250,height: 200)
                            .cornerRadius(15)
                        
                        HStack(){
                            
                            VStack(alignment: .leading, spacing: 30){
                                
                                Text(popular.title!)
                                    .foregroundColor(.white)
                                    .lineLimit(2)
                                    .font(.system(size: 30, weight: .heavy, design: .default))
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 135)
                                
                                
                                
                                Text("\(popular.exerciseCount!) Exercise")
                                    .foregroundColor(.white)
                                    .font(fontName: .heavy,fontSize: .size14)
                                
                                HStack(spacing: 7){
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .renderingMode(.original)
                                        .frame(width: 20, height: 20)
                                    Text(popular.rating!)
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold, design: .default))
                                }
                            }
                            .padding(edges: .leading, 15)
                            .padding(edges: .vertical,20)
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}

struct TopExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        TopExerciseView()
    }
}
