//
//  TrendingDetail.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 10/04/2023.
//

import SwiftUI

struct TrendingDetail: View {
    
    // For Back Button
    @Environment (\.presentationMode) private var presentationMode
    @Environment(\.dismiss) private var dismiss
    
    let exercise: Exercise
    @State var timeRemaining:Int? = 16
    
    
    @State private var isActive = true
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ScrollView(){
            VStack(alignment: .center, spacing: 35){
                
                VStack(alignment: .center, spacing: 34){
                    Text((exercise.detail?.description!)!)
                        .font(.system(size: 16,weight: .light,design: .default))
                        .foregroundColor(.gray)
                        .padding(edges: .horizontal,25)
                        .lineLimit(7)
                        .multilineTextAlignment(.center)
                    
                    
                    
                    Image((exercise.detail?.img!)!)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 250,height: 300)
                        .padding(edges: .horizontal,10)
                        .padding(edges: .vertical,10)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 15)

                }
                .padding(edges: .top,30)
                
                VStack(alignment: .center, spacing: 6){
                    Text("Duration")
                        .font(.system(size: 16,weight: .light, design: .default))
                        .foregroundColor(.gray)
                    
                    Text("\(timeRemaining!)s")
                        .font(.system(size: 20,weight: .bold, design: .default))
                    
                    if isActive{
                        Button {
                            //self.isActive = true
                            self.instantiateTimer()
                        } label: {
                            Image("play")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                            
                        }
                    }
                    
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(exercise.desc!)
            .navigationBarItems(
                leading:
                    BackButton(action: {
                        presentationMode.wrappedValue.dismiss()
                    })
            )
            
        }
    }
        
    func instantiateTimer() {
    // Start the timer when the button is clicked
        self.isActive = false
        self.timeRemaining = 16
       Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
           if self.timeRemaining! > 0 {
               self.timeRemaining! -= 1
           }
           else if timeRemaining! == 0{
               self.isActive = true
           }
           else {
               timer.invalidate()
           }
       }
        return
    }
    
//        .onReceive(timer) { time in
//            if self.isActive == true{
//                if timeRemaining! > 0 {
//                    timeRemaining! -= 1
//                }
//                else if timeRemaining! == 0{
//                    timeRemaining! = 16
//                    self.isActive = false
//                }
//            }
//        }


}


//struct TrendingDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        TrendingDetail()
//    }
//}
