//
//  Copyright © 2020 An Tran. All rights reserved.
//


import SwiftUI

struct OpenURLInDefaultBrowserView: View {

    var body: some View {
        DemoView(
            title: "Default Browser",
            remoteSourcePath: "More/Cookbook/Receipts/OpenURLInDefaultBrowserView.swift"
        ) {
            OpenURLInDefaultBrowserDemoView()
        }
    }
}


private struct OpenURLInDefaultBrowserDemoView: View {
    var body: some View {
        VStack {
            Button("Open Google in Default Browser") {
                let url = URL(string: "https://www.google.com")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
