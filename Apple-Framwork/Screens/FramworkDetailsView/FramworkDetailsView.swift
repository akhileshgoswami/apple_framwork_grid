//
//  FramworkDetailsView.swift
//  Apple-Framwork
//
//  Created by APP-DEVELOPER on 29/07/24.
//

import SwiftUI

struct FramworkDetailsView: View {
    let framwork: Framework
    @Binding var isShowingDwetailsView:Bool
    @State var isShowingSafariView:Bool = false
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    isShowingDwetailsView =  false
                }label: {
                    Image(systemName: "xmark").foregroundColor(Color(.label)).imageScale(.large).frame(width: 44,height: 44)
                }
            }.padding()
     
                Spacer()
           
                 
                    FramworkTitleView(framwork: framwork)
                    Text(framwork.description).font(.body).padding()
     
                Spacer()
                Button{
                    print("Learn more")
                    isShowingSafariView = true
                }label: {
                    AFButton(buttonTitle: "Learn more")
                }.sheet(isPresented: $isShowingSafariView, content: {
                    SafariView(url: URL(string:framwork.urlString) ?? URL(string: "www.apple.com")!)
                })
        }
    }
}

#Preview {
    FramworkDetailsView(framwork: MockData.sampleFramework,isShowingDwetailsView:.constant(false))
}
