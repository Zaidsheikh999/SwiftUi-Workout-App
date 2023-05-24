//
//  TopView.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 06/04/2023.
//

import SwiftUI

struct TopView: View {
    
    @State private var showingAlert: Bool = false
    
    var body: some View {
        ZStack(){

            LinearGradient(gradient: Gradient(colors: [Color("todoBg"),Color("todoText")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
                .frame(width: 350,height: 150)
                .cornerRadius(15)
                .opacity(0.5)
            
            HStack(){
                
                VStack(alignment: .leading, spacing: 20){
                    
                    Text("Refresh body with exercise")
                        .foregroundColor(.black)
                        .lineLimit(2)
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .multilineTextAlignment(.leading)
                        .frame(width: 180)
                    
                
                    
                    Button(action: {
                        self.showingAlert = true
                    }, label: {
                        Text("Join Now")
                            .font(.system(size: 14,weight: .light))
                            .padding()
                            .foregroundColor(.white)
                            .frame(width: 100, height: 35)
                            .background(.black)
                            .cornerRadius(8)
                            .padding(.leading,13)
                    })
                    .buttonStyle(.plain)
                    .shadow(radius: 5)
 
                }
                .padding(edges: .leading, 25)
                .padding(edges: .vertical,20)
                Spacer()
            }
        }
        .shadowStyle()
        .alert("Currently not available", isPresented: $showingAlert) {
            Button("Ok", role: .cancel) { }

            }
        }
    }


//struct TopView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopView()
//    }
//}
