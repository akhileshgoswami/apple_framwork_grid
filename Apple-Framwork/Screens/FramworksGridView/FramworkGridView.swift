//
//  FramworkGridView.swift
//  Apple-Framwork
//
//  Created by APP-DEVELOPER on 29/07/24.
//

import SwiftUI

struct FramworkGridView: View {
    @StateObject var viewModel = FramworkViewModel()
   
    var body: some View {
        ZStack{
            NavigationView {
                ScrollView{
                    LazyVGrid(columns:viewModel.columns, content: {
                        
                        ForEach(MockData.frameworks) {
                            framwork in FramworkTitleView(framwork: framwork).onTapGesture {
                                print(framwork.name)
                                viewModel.selectedFramwork = framwork
                            }
                        }
                        
                       
                    }
                    )
                }
                .navigationTitle("🍎 Framworks")
                .fullScreenCover(isPresented: $viewModel.isShowingDetailsView, content: {
                    FramworkDetailsView(framwork: viewModel.selectedFramwork ?? MockData.sampleFramework,isShowingDwetailsView: $viewModel.isShowingDetailsView)
                })
            }
         
        }
    
        
    }
    
}
    
#Preview {
    FramworkGridView()
}


struct FramworkTitleView : View{
    let framwork:Framework
    
    var body: some View {
        VStack{
            Image(framwork.imageName).resizable().frame(width: 90,height: 90)
            Text(framwork.name).font(.title2).fontWeight(.semibold).scaledToFit().minimumScaleFactor(0.6)
        }.padding()
    }
}
struct backgroundGradiant: View {
    
    var topColor:Color
    var bottomColor:Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

