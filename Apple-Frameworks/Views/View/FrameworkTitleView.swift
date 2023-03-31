//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Junaed Muhammad Chowdhury on 2/3/23.
//

import SwiftUI


struct FrameworkTitleView: View {
    let framwork: Framework


    var body: some View {
        HStack {
            Image(framwork.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)

            Text(framwork.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
        
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framwork: MockData.sampleFramework)
    }
}
