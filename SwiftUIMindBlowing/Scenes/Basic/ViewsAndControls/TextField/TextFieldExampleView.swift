//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct TextFieldExampleView: View {

    var body: some View {
        ExampleView(
            title: "TextField",
            demoContentView: TextFieldExampleDemoView(),
            remoteSourcePath: "Basic/ViewsAndControls/TextField/TextFieldExampleDemoView.swift"
        )
    }
}

struct TextFieldExampleView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExampleView()
    }
}
