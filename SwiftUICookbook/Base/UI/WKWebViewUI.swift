//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI
import WebKit
import UIKit

public struct WKWebViewUI: UIViewRepresentable {

    public typealias UIViewType = WKWebView

    let resource: String

    public func makeUIView(context: UIViewRepresentableContext<WKWebViewUI>) -> WKWebViewUI.UIViewType {
        let webView = WKWebView()
        let url = Bundle.main.url(forResource: "text_index", withExtension: "html")!
        webView.loadFileURL(url, allowingReadAccessTo: url)
        let request = URLRequest(url: url)
        webView.load(request)
        return webView
    }

    public func updateUIView(_ uiView: WKWebViewUI.UIViewType, context: UIViewRepresentableContext<WKWebViewUI>) {
    }
}

#if DEBUG
struct WKWebViewUI_Previews : PreviewProvider {
    static var previews: some View {
        WKWebViewUI(resource: "text_index")
    }
}
#endif
