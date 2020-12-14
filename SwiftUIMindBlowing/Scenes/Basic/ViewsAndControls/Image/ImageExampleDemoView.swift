//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ImageExampleDemoView: View {

    var body: some View {
        VStack {
            Image("swiftui")
            
            Image("swiftui")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .cornerRadius(50)

            // Add an example for remote images.
        }
        .navigationBarTitle(Text("Image"))
        .padding()

    }
}
