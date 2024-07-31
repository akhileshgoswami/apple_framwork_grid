//
//  AFButton.swift
//  Apple-Framwork
//
//  Created by APP-DEVELOPER on 30/07/24.
//

import SwiftUI

struct AFButton: View {
    let buttonTitle:String
    
    
    var body: some View {
        Text("Lean more").font(.title2).fontWeight(.semibold).frame(width: 280,height: 50).background(.red).foregroundColor(.white).cornerRadius(10)
    }
}


