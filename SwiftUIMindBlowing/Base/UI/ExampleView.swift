//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ExampleView<Content>: View where Content: View {

    @State private var viewIndex = 0

    private var demoContentView: () -> Content
    private let remoteSourcePath: String

    public init(demoContentView: @escaping () -> Content, remoteSourcePath: String) {
        self.demoContentView = demoContentView
        self.remoteSourcePath = remoteSourcePath
    }

    var body: some View {
        VStack {
            Picker(selection: self.$viewIndex, label: Text("Demo")) {
                Text("Demo").tag(0)
                Text("Source").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())

            if self.viewIndex == 0 {
                self.demoContentView()
            } else if self.viewIndex == 1 {
                WKWebViewUI(remoteSourcePath: self.remoteSourcePath)
            }

            Spacer()
        }
    }
}

#if DEBUG
struct BaseExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView(
            demoContentView: {
                Text("Demo")
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/Text/TextExampleView.swift"
        )
    }
}
#endif
