//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI
import WebKit
import UIKit

public struct WKWebViewUI: UIViewRepresentable {

    public typealias UIViewType = WKWebView

    let remoteSourcePath: String

    public func makeUIView(context: UIViewRepresentableContext<WKWebViewUI>) -> WKWebViewUI.UIViewType {
        let webView = WKWebView()
        let url = URL(string: remoteSourcePath)!
        let request = URLRequest(url: url)
        webView.load(request)
        return webView
    }

    public func updateUIView(_ uiView: WKWebViewUI.UIViewType, context: UIViewRepresentableContext<WKWebViewUI>) {
    }
}

#if DEBUG
struct WKWebViewUI_Previews: PreviewProvider {
    static var previews: some View {
        WKWebViewUI(remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/Text/TextExampleView.swift")
    }
}
#endif
