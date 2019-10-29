//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct AutoFocusTextFieldView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> AutoFocusTextFieldDemoView in
                AutoFocusTextFieldDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/More/Cookbook/Receipts/AutoFocusTextFieldDemoView.swift"
        )
        .navigationBarTitle("AutoFocus TextField")
    }
}

#if DEBUG
struct AutoFocusTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        AutoFocusTextFieldView()
    }
}
#endif
