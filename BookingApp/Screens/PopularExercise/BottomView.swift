//
//  BottomView.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 07/04/2023.
//

import SwiftUI

struct BottomView: View {
    
    @ObservedObject var vm = ExerciseVM()
    
    let exercise: Exercise
    
    var width: CGFloat!
    var height: CGFloat!
    
    @State private var showMore: Bool = false
    
    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false){
//            HStack(spacing: 15){
//                ForEach((vm.exercise).enumerated().filter{(0...2).contains($0.offset)}.map{$1}){ exercise in
                    ZStack(){
                        LinearGradient(gradient: Gradient(colors: [Color((exercise.bg?.gradient1)!),Color((exercise.bg?.gradient2)!)]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                        .frame(width: width,height: height)
                        .cornerRadius(15)
                        .opacity(0.3)
                        .shadowStyle()
                        
                        VStack(alignment: .center){
                            Spacer()
                            Spacer()
                            VStack(alignment: .center, spacing: 10){
                                Image(exercise.cardImg!)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 100)
                                    .shadow(color: Color.white, radius: 5, x: 0, y: 0)
                              
                                
                                Text(exercise.desc!)
                                    .font(.system(size: 15,weight: .bold, design: .default))
                                    .foregroundColor(.black)
//                                    .padding()
                                    .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 0)
                                
                                HStack(spacing: 4){
                                    HStack(spacing: 6){
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(.yellow)
                                        .padding(edges: .vertical, 6)
                                        .padding(edges: .leading, 10)
                                    
                                    Text(exercise.rating!)
                                        .font(.system(size: 10, weight: .light, design: .default))
                                        .foregroundColor(.brown)
                                        .padding(edges: .trailing, 10)
                                    }
                                    .background(.white)
                                    .cornerRadius(15)
                                    .frame(height: 25)
                                    .shadowStyle()
                                    
                                    Text("(\(exercise.reviews!) Review)")
                                        .font(.system(size: 10,weight: .light, design: .default))
                                        .foregroundColor(.black).opacity(0.7)
              
                                }
                                .padding(edges: .bottom,20)
                                
                            }
                        }
                        
                        NavigationLink(destination: TrendingDetail(exercise: exercise).navigationBarBackButtonHidden(true), isActive: $showMore) {EmptyView()}.hidden().frame(w: 0, h: 0)

                    }
                    .onTapGesture {
                        self.showMore = true
                    }
//                }
//            }
//            .onTapGesture {
//                self.showMore = true
//            }
//            .padding(edges: .horizontal, 15)
//        }

    }
}

//struct BottomView_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomView()
//    }
//}

