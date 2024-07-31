//
//  FramworkViewModel.swift
//  Apple-Framwork
//
//  Created by APP-DEVELOPER on 30/07/24.
//

import SwiftUI


class FramworkViewModel: ObservableObject {
    
    var selectedFramwork: Framework?{
        didSet{
            isShowingDetailsView =  true
        }
    }
    
    @Published var isShowingDetailsView = false
    let columns:[GridItem] =  [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
}
