//
//  Copyright © 2019 An Tran. All rights reserved.
//

import WebKit

class WKWebViewUIDelegate: NSObject, WKNavigationDelegate {

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("didFinish")

        print(webView.url)

        let script = "document.body.style.background = 'red'"

        webView.evaluateJavaScript(script) { (result, error) in
            print("Result \(result)")
            print("Error \(error)")
        }
    }

    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("didFail")
    }
}
