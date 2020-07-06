//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct AutoFocusTextFieldView: View {

    var body: some View {
        ExampleView(
            title: "Autofocus TextField",
            demoContentView: AutoFocusTextFieldDemoView(),
            remoteSourcePath: "More/Cookbook/Receipts/AutoFocusTextFieldDemoView.swift"
        )
    }
}

struct AutoFocusTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        AutoFocusTextFieldView()
    }
}
