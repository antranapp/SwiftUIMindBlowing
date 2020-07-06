//
//  Copyright © 2020 An Tran. All rights reserved.
//

import SwiftUI

struct DemoView<Content: View>: View {

    @ObservedObject var store = WKWebViewStore.shared
    @State private var viewIndex = 0

    private var title: String
    private let remoteSourcePath: String?
    private var content: Content

    public init(
        title: String = "",
        remoteSourcePath: String? = nil,
        @ViewBuilder content: () -> Content
    ) {
        self.title = title
        self.remoteSourcePath = remoteSourcePath
        self.content = content()
    }

    var body: some View {
        VStack {
            if self.remoteSourcePath != nil {
                Picker(selection: self.$viewIndex, label: Text("Demo")) {
                    Text("Demo").tag(0)
                    Text("Source").tag(1)
                }
                .pickerStyle(SegmentedPickerStyle())

                if self.viewIndex == 0 {
                    self.content
                } else if self.viewIndex == 1 {
                    VStack {
                        Toggle(isOn: $store.shouldWrapWord) {
                            Text("Wrap text")
                        }
                        .padding(.horizontal)
                        WKWebViewUI(remoteSourcePath: Constants.repositoryPrefix + self.remoteSourcePath!, shouldWrapWord: store.shouldWrapWord)
                            .edgesIgnoringSafeArea(.all)
                    }
                }
            } else {
                self.content
            }

            Spacer()
        }
        .navigationBarTitle(Text(title), displayMode: .inline)
    }
}

struct DemoView_Previews: PreviewProvider {
    static var previews: some View {
        DemoView(
            title: "Demo",
            remoteSourcePath: "Basic/ViewsAndControls/Text/TextExampleView.swift") {
                Text("Demo")
        }
    }
}
