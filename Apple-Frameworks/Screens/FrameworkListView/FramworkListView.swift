//
//  FramworkGridView.swift
//  Apple-Frameworks
//
//  Created by Junaed Muhammad Chowdhury on 1/3/23.
//

import SwiftUI

struct FramworkListView: View {
    
    @StateObject var viewModel = FramworkListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framwork in
                    NavigationLink(destination: FramworkDetailView(viewModel: FramworkDetailViewModel(framwork: framwork))) {
                        FrameworkTitleView(framwork: framwork)
                    }.buttonStyle(.plain)
                }
            }
            .listStyle(.plain)
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}

struct FramworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FramworkListView()
    }
}



