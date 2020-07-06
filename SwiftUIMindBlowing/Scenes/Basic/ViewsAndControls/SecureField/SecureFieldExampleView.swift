//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct SecureFieldExampleView: View {

    var body: some View {
        ExampleView(
            title: "SecureField",
            demoContentView: SecureFieldExampleDemoView(),
            remoteSourcePath: "Basic/ViewsAndControls/SecureField/SecureFieldExampleDemoView.swift"
        )
    }
}

struct SecureFieldExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldExampleView()
    }
}
