//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct PickerExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> PickerExampleDemoView in
                PickerExampleDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/PickerExampleView.swift"
        )
        .navigationBarTitle("Picker")
    }
}

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

#if DEBUG
struct PickerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        PickerExampleView()
    }
}
#endif
