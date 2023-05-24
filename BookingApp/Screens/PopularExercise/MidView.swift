//
//  MidView.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 06/04/2023.
//

import SwiftUI

struct MidView: View {
    
//    let exercise: Exercise
    @ObservedObject var vm = ExerciseVM()
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
                HStack(spacing: 15){
                    ForEach(vm.exercise.enumerated().filter{(0...5).contains($0.offset)}.map{$1}){ exercise in
                        ZStack(alignment: .center){
                            LinearGradient(gradient: Gradient(colors: [Color((exercise.bg?.gradient1)!),Color((exercise.bg?.gradient2)!)]),
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing)
                            .frame(width: 80,height: 80)
                            .cornerRadius(10)
                            .opacity(0.7)
                            .shadowStyle()
                            
                            Image(exercise.icon!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35,height: 35)
                                .cornerRadius(10)
                            
                            Text(exercise.title!)
                                .foregroundColor(.black)
                                .font(.system(size: 10, weight: .light, design: .default))
                                .padding(.top, 105)
                        }
                        
                    }
                    
                }
                .padding(.leading,15)
                .padding(.trailing,15)
        }

    }
}

//struct MidView_Previews: PreviewProvider {
//    static var previews: some View {
//        MidView()
//    }
//}
