//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ToggleExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> ToggleExampleDemoView in
                ToggleExampleDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/ToggleExampleView.swift"
        )
        .navigationBarTitle("Toggle")
    }
}


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

#if DEBUG
struct ToggleExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleExampleView()
    }
}
#endif
