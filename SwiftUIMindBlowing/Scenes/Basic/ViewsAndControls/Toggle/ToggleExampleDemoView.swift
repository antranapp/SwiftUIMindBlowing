//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ToggleExampleDemoView: View {

    @State var isTextVisible = true

    var body: some View {
        VStack {
            Toggle(isOn: $isTextVisible) {
                Text("Toggle Text")
            }
            if self.isTextVisible {
                Text("This text's visibility is controlled by the toggle")
            }
        }
        .navigationBarTitle(Text("Toggle"))
        .padding()
    }
}
