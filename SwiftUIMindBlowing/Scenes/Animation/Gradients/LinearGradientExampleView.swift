//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct LinearGradientExampleView: View {

    var body: some View {
        Text("SwifUI Mindblowing")
            .font(.system(size: 36))
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [.orange, .red, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}


struct LinearGradientExampleView_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradientExampleView()
    }
}

