//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct BaseExampleView<Content>: View where Content: View {

    @State private var viewIndex = 0

    private var demoContentView: () -> Content
    private let sourcePath: String

    public init(demoContentView: @escaping () -> Content, sourcePath: String) {
        self.demoContentView = demoContentView
        self.sourcePath = sourcePath
    }

    var body: some View {
        GeometryReader { geometry in
            VStack {
                Picker(selection: self.$viewIndex, label: Text("Demo")) {
                    Text("Demo").tag(0)
                    Text("Source").tag(1)
                }
                .pickerStyle(SegmentedPickerStyle())

//                if self.viewIndex == 0 {
//                    self.demoContentView()
//                } else if self.viewIndex == 1 {
//                    WKWebViewUI(resource: self.sourcePath)
//                }
            }
        }
    }
}

#if DEBUG
struct BaseExampleView_Previews : PreviewProvider {
    static var previews: some View {
        BaseExampleView(demoContentView: {
            Text("Demo")
        }, sourcePath: "text_index")
    }
}
#endif
