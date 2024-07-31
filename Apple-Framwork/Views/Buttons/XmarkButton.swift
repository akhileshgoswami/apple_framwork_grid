//
//  XmarkButton.swift
//  Apple-Framwork
//
//  Created by APP-DEVELOPER on 31/07/24.
//

import SwiftUI

struct XmarkButton: View {
    @Binding var isShowingDwetailsView:Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDwetailsView =  false
            }label: {
                Image(systemName: "xmark").foregroundColor(Color(.label)).imageScale(.large).frame(width: 44,height: 44)
            }
        }.padding()
    }
}

#Preview {
    XmarkButton(isShowingDwetailsView: .constant(false))
}
