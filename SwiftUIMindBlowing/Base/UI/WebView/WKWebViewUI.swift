//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI
import WebKit
import UIKit

struct WKWebViewUI: UIViewRepresentable {

    typealias UIViewType = WKWebView

    let remoteSourcePath: String
    let shouldWrapWord: Bool

    // MARK: Public

    func makeUIView(context: UIViewRepresentableContext<WKWebViewUI>) -> WKWebViewUI.UIViewType {
        let webView = WKWebView(frame: .zero)
        webView.navigationDelegate = context.coordinator
        return webView
    }

    func makeCoordinator() -> WKWebViewUICoordinator {
        WKWebViewUICoordinator()
    }

    func updateUIView(_ uiView: WKWebViewUI.UIViewType, context: UIViewRepresentableContext<WKWebViewUI>) {
        guard let url = URL(string: remoteSourcePath), let data = try? Data.init(contentsOf: url), let dataString = String(data: data, encoding: .utf8) else {
            showError(in: uiView)
            return
        }

        let htmlString = """
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/highlight.min.js"></script>
                <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/languages/swift.min.js"></script>
                <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/styles/a11y-dark.min.css">
                <style>
                    .wrap-word {
                        overflow-wrap: break-word;
                        word-wrap: break-word;
                        hyphens: auto;
                    }
                </style>
            </head>
            <body class="\(shouldWrapWord ? "wrap-word" : "")">
                <pre><code class="swift">\(dataString.trimmingCharacters(in: .whitespaces))</code></pre>
                <script>
                    hljs.initHighlightingOnLoad();
                </script>
            </body>
        </html>
        """
        uiView.loadHTMLString(htmlString, baseURL: nil)
    }

    // MARK: Private helpers

    func showError(in webView: WKWebView){
        guard let url = Bundle.main.url(forResource: "error", withExtension: "html") else {
            return
        }

        webView.loadFileURL(url, allowingReadAccessTo: url)
    }
}


struct WKWebViewUI_Previews: PreviewProvider {
    static var previews: some View {
        WKWebViewUI(remoteSourcePath: "Basic/ViewsAndControls/Text/TextExampleView.swift", shouldWrapWord: true)
    }
}

