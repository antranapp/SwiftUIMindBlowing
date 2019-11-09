//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

class WKWebViewStore: ObservableObject {
    static let shared = WKWebViewStore()

    @Published var shouldWrapWord = false
}
