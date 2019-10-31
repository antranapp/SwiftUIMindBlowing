//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI
import WebKit
import UIKit

public struct WKWebViewUI: UIViewRepresentable {

    public typealias UIViewType = WKWebView

    let remoteSourcePath: String
    let delegate = WKWebViewUIDelegate()

    // MARK: Public

    public func makeUIView(context: UIViewRepresentableContext<WKWebViewUI>) -> WKWebViewUI.UIViewType {

        let configuration = prepareConfiguration()
        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.navigationDelegate = delegate
        return webView
    }

    public func updateUIView(_ uiView: WKWebViewUI.UIViewType, context: UIViewRepresentableContext<WKWebViewUI>) {
        if let url = URL(string: remoteSourcePath) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }

    // MARK: Private

    private func prepareConfiguration() -> WKWebViewConfiguration {
        let configuration = WKWebViewConfiguration()
        let contentController = WKUserContentController()

        if let jsScript = loadJavascript() {
            contentController.addUserScript(jsScript)
        }

        if let cssScript = loadCSS() {
            contentController.addUserScript(cssScript)
        }

        configuration.userContentController = contentController

        return configuration
    }

    private func loadJavascript() -> WKUserScript? {
        guard let jsPath = Bundle.main.path(forResource: "prism", ofType: "js") else {
            return nil
        }

        guard let js = try? String(contentsOfFile: jsPath) else {
            return nil
        }

        return WKUserScript(source: js, injectionTime: .atDocumentEnd, forMainFrameOnly: false)
    }

    private func loadCSS() -> WKUserScript? {
        guard let cssPath = Bundle.main.path(forResource: "prism", ofType: "css") else {
            return nil
        }

        guard let css = try? String(contentsOfFile: cssPath).components(separatedBy: .newlines).joined() else {
            return nil
        }

        let source = """
        var style = document.createElement('style');
        style.innerHTML = '\(css)';
        document.head.appendChild(style);
        """

        return WKUserScript(source: source, injectionTime: .atDocumentEnd, forMainFrameOnly: false)
    }

    private func loadHTML() -> String? {
        guard let htmlPath = Bundle.main.path(forResource: "index", ofType: "html") else {
            return nil
        }

        return try? String(contentsOfFile: htmlPath)
    }

}

#if DEBUG
struct WKWebViewUI_Previews: PreviewProvider {
    static var previews: some View {
        WKWebViewUI(remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/Text/TextExampleView.swift")
    }
}
#endif
