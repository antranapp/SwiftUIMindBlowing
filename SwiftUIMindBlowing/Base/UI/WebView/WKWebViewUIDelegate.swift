//
//  Copyright © 2019 An Tran. All rights reserved.
//

import WebKit

class WKWebViewUIDelegate: NSObject, WKNavigationDelegate {

    var remoteSourcePath: String

    init(remoteSourcePath: String) {
        self.remoteSourcePath = remoteSourcePath
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {}

    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        guard let url = Bundle.main.url(forResource: "error", withExtension: "html") else {
            return
        }

        webView.loadFileURL(url, allowingReadAccessTo: url)
    }
}
