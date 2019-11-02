//
//  Copyright © 2019 An Tran. All rights reserved.
//

import WebKit

class WKWebViewUIDelegate: NSObject, WKNavigationDelegate {

    var remoteSourcePath: String

    init(remoteSourcePath: String) {
        self.remoteSourcePath = remoteSourcePath
    }
}
