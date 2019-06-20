//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct PickerExampleView : View {

    @State var pickerValue: String = "UIKit"
    let uiStacks = ["UIKit", "UIKit for Mac", "SwiftUI"]

    var body: some View {
        VStack {
            Text(pickerValue)
            Picker(selection: $pickerValue, label: Text("UI Stacks")) {
                ForEach(uiStacks.identified(by: \.self)) { uiStack in
                    Text(uiStack)
                }
            }
            
        }
        .navigationBarTitle(Text("Picker"))
        .padding()

    }
}

#if DEBUG
struct PickerExampleView_Previews : PreviewProvider {
    static var previews: some View {
        PickerExampleView()
    }
}
#endif
