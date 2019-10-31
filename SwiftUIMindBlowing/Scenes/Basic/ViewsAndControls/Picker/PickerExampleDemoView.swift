//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct PickerExampleDemoView: View {

    @State var pickerValue = "UIKit"
    let uiStacks = ["UIKit", "UIKit for Mac", "SwiftUI"]

    var body: some View {
        VStack {
            Text(pickerValue)
            Picker(selection: $pickerValue, label: Text("UI Stacks")) {
                ForEach(uiStacks, id: \.self) { uiStack in
                    Text(uiStack)
                }
            }

        }
        .navigationBarTitle(Text("Picker"))
        .padding()

    }
}
