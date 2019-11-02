//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ZStackExampleDemoView: View {

    var body: some View {
        ZStack {
            Image("swiftui")
            Text("SwiftUI Mindblowing 🤯")
                .font(.largeTitle)
                .background(Color.red)
                .foregroundColor(.white)
        }
    }
}
