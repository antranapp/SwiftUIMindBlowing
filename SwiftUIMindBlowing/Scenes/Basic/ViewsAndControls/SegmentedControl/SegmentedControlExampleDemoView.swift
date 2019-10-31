//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct SegmentedControlExampleDemoView: View {

    @State var index1 = 0
    @State var index2 = 0
    let uiStacks = ["UIKit", "UIKit for Mac", "SwiftUI"]

    var body: some View {
        VStack {
            // Use binding to display value of array in a Text element
            Picker(selection: $index1, label: Text("UI Stack")) {
                ForEach(0..<self.uiStacks.count) { index1 in
                    Text(self.uiStacks[index1]).tag(index1)
                }
            }
            .pickerStyle(SegmentedPickerStyle())

            Text("\(index1) - \(uiStacks[index1])")

            Divider()

            // Display custom view depending on the selected index of the SegmentedControl
            Picker(selection: $index2, label: Text("UI Stack")) {
                ForEach(0..<uiStacks.count) { index2 in
                    Text(self.uiStacks[index2]).tag(index2)
                }
            }
            .pickerStyle(SegmentedPickerStyle())

            if index2 == 0 {
                CustomView1()
            } else if index2 == 1 {
                CustomView2()
            } else if index2 == 2 {
                CustomView3()
            }

            Spacer()
        }
        .navigationBarTitle(Text("SegmentedControl"))
        .padding()

    }
}

private struct CustomView1: View {

    var body: some View {
        Text("UIKit View")
    }
}

private struct CustomView2: View {

    var body: some View {
        Text("UIKit for Mac View")
    }
}

private struct CustomView3: View {

    var body: some View {
        Text("Swift View")
    }
}
