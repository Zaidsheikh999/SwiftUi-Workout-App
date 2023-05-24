//
//  HomeItem.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 03/04/2023.
//

import SwiftUI

struct HomeItem: View {
    @State var progress: Double = 46
    @State private var showMore: Bool = false
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing: 25) {
                HStack(spacing: 14) {
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Workout Progress")
                            .foregroundColor(.white)
                            .font(.system(size: 24, weight: .heavy, design: .default))
                            .padding(.leading, 10)
                        Text("12 Exercise left")
                            .foregroundColor(.gray)
                            .font(fontName: .medium, fontSize: .size14)
                            .padding(.leading, 10)
                    }
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    
                    ZStack() {
                        CircularProgressView(progress: progress,textColor: .white)
                    }
                    .frame(width: 45, height: 45)
                    .padding(edges: .trailing, 10)
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 16)
                .background(.black)
                .cornerRadius(15)
                .shadowStyle()
                
                SectionHeader(title: "Today's Activity",rightText: "Edit")
                
                ActivityItem()
                
                SectionHeader(title: "Overall Status",rightText: "See more"){
                    self.showMore = true
                }
            
                StatusItem()
            }
            NavigationLink(destination: Status().navigationTitle("Ovarall Stat").navigationBarTitleDisplayMode(.inline).navigationBarBackButtonHidden(true),isActive: $showMore) { EmptyView() }
        
        }
    }
}
struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }

}

struct NavigationBarModifier: ViewModifier {

    var backgroundColor: UIColor?
    var titleColor: UIColor?
    

    init(backgroundColor: Color, titleColor: UIColor?) {
        self.backgroundColor = UIColor(backgroundColor)
        
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = .clear // The key is here. Change the actual bar to clear.
        coloredAppearance.titleTextAttributes = [.foregroundColor: titleColor ?? .white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor ?? .white]
        coloredAppearance.shadowColor = .black
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = titleColor
    }

    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.backgroundColor ?? .clear)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}
extension View {
    func navigationBarColor(backgroundColor: Color, titleColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor, titleColor: titleColor))
    }
}


//struct HomeItem_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeItem()
//    }
//}
