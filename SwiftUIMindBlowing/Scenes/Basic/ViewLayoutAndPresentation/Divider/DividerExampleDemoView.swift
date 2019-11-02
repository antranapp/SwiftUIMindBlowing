//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct DividerExampleDemoView: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("SwiftUI")
                Divider()
                Text("Mindblowing")
            }
            Divider()
            Text("SwiftUI Mindblowing")
        }
    }
}
