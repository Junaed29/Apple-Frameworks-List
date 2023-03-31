//
//  FramworkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by Junaed Muhammad Chowdhury on 31/3/23.
//

import SwiftUI

class FramworkDetailViewModel: ObservableObject{
    var framwork: Framework
    @Published var isShowingSafariView = false
    
    init(framwork: Framework) {
        self.framwork = framwork
    }
}
