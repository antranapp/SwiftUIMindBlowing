//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ButtonExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> ButtonExampleDemoView in
                ButtonExampleDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/PickerExampleView.swift"
        )
        .navigationBarTitle("Button")
    }
}

struct ButtonExampleDemoView: View {

    @State var randomValue = 0

    var body: some View {
        VStack(alignment: .leading) {
            Text("\(randomValue)")
            Button(action: {
                self.randomValue = Int.random(in: 1..<100)
            }) {
                Text("Generate random number")
            }

            Divider()

            Button(action: {
                print("Button clicked")
            }) {
                Text("This button is disabled")
            }.disabled(true)

            Divider()
        }
        .navigationBarTitle(Text("Button"))
        .padding()
    }
}

#if DEBUG
struct ButtonExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExampleView()
    }
}
#endif
