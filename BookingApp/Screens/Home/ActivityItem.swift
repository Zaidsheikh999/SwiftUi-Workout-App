//
//  ActivityItem.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 03/04/2023.
//

import SwiftUI

struct ActivityItem: View {
    var body: some View {
        HStack(spacing: 8){
            //left view
            VStack(){
                Spacer()
                VStack(spacing: 15){
                    Image(systemName: "figure.mind.and.body")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 34, height: 34)
                        .cornerRadius(5)
                    
                    VStack(spacing: 7){
                        Text("1.350")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(.white)
                        Text("Calories")
                            .foregroundColor(.whiteThree)
                            .font(.system(size: 12, weight: .light, design: .default))
                    }
                }
                Spacer()
                Spacer()

            }
            .frame(width: 80, height: 200)
            .background(Color("invoiceUnpaidText"))
            .cornerRadius(10)
            .shadowStyle()
            
            //right view
            VStack(alignment: .leading,spacing: 10){
                HStack(){
                    VStack(alignment: .leading, spacing: 15){
                        HStack(spacing: 15){
                            VStack(alignment: .leading,spacing: 5){
                                Text("Push-ups")
                                    .font(.system(size: 20, weight: .semibold, design: .default))
                                    .foregroundColor(.black)
                                    .padding(.leading,15)
                                
                                Text("Bicep, Tricep, Shoulder")
                                    .font(.system(size: 12, weight: .light, design: .default))
                                    .foregroundColor(.gray)
                                    .padding(.leading,15)
                            }
                            Spacer()
                            HStack(spacing: 4){
                                Text("15")
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(.black)
                                Text("X3")
                                    .font(.system(size: 12, weight: .regular, design: .default))
                                    .foregroundColor(.gray)
                                    .padding(.trailing,15)
                            }
                        }
                        
                        HStack(spacing: 15){
                            VStack(alignment: .leading,spacing: 5){
                                Text("Squads")
                                    .font(.system(size: 20, weight: .semibold, design: .default))
                                    .foregroundColor(.black)
                                    .padding(.leading,15)
                                
                                Text("Calves, Legs, Thighs")
                                    .font(.system(size: 12, weight: .light, design: .default))
                                    .foregroundColor(.gray)
                                    .padding(.leading,15)
                            }
                            Spacer()
                            HStack(spacing: 4){
                                Text("15")
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(.black)
                                Text("X3")
                                    .font(.system(size: 12, weight: .regular, design: .default))
                                    .foregroundColor(.gray)
                                    .padding(.trailing,15)
                            }
                        }
                        
                        HStack(spacing: 15){
                            VStack(alignment: .leading,spacing: 5){
                                Text("Lunges")
                                    .font(.system(size: 20, weight: .semibold, design: .default))
                                    .foregroundColor(.black)
                                    .padding(.leading,15)
                                
                                Text("Calves, Hamstrings")
                                    .font(.system(size: 12, weight: .light, design: .default))
                                    .foregroundColor(.gray)
                                    .padding(.leading,15)
                            }
                            Spacer()
                            HStack(spacing: 4){
                                Text("15")
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(.black)
                                Text("X3")
                                    .font(.system(size: 12, weight: .regular, design: .default))
                                    .foregroundColor(.gray)
                                    .padding(.trailing,15)
                            }
                        }
                    }
                  
                }
                .padding(edges: .vertical, 15)
            }
            .frame(width: 245, height: 200)
            .background(.white)
            .cornerRadius(10)
            .shadowStyle()
            
        }
    }
}

//struct ActivityItem_Previews: PreviewProvider {
//    static var previews: some View {
//        ActivityItem()
//    }
//}
