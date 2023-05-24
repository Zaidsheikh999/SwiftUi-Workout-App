//
//  CollectionExerciseView.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 04/04/2023.
//

import SwiftUI

struct CollectionExerciseView: View {
    
    @ObservedObject var vm = DiscoverVM()
    
    var body: some View {
        VStack(spacing: 10){
            ForEach(vm.collection){collection in
                ZStack(){
//                    Image(collection.bannerImage!)
//                        .renderingMode(.original)
//                        .resizable()
//                        .scaledToFill()
                    LinearGradient(gradient: Gradient(colors: [Color(collection.gradient1!),Color(collection.gradient2!)]),
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                        .frame(width: 350,height: 150)
                        .cornerRadius(15)
                        .opacity(0.5)
                    
                    HStack(){
                        
                        VStack(alignment: .leading, spacing: 30){
                            
                            Text(collection.title!)
                                .foregroundColor(.black)
                                .lineLimit(2)
                                .font(.system(size: 24, weight: .bold, design: .default))
                                .multilineTextAlignment(.leading)
//                                .frame(width: 135)
                            
                            
                            HStack(spacing: 3){
                                Image("gymIcon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20,height: 20)
                                    .clipShape(Circle())
                                
                                Text("\(collection.exerciseCount!) Exercise")
                                    .foregroundColor(.black)
                                    .font(.system(size: 14, weight: .heavy))
                            }
                        }
                        .padding(edges: .leading, 15)
                        .padding(edges: .vertical,20)
                        Spacer()
                    }
                }
            }
        }
        .shadowStyle()
    }
}

struct CollectionExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionExerciseView()
    }
}
