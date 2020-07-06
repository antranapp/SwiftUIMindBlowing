//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct TextExampleView: View {

    var body: some View {
        ExampleView(
            title: "Text",
            demoContentView: TextExampleDemoView(),
            remoteSourcePath: "Basic/ViewsAndControls/Text/TextExampleDemoView.swift"
        )
    }
}


struct TextExampleView_Previews: PreviewProvider {
    static var previews: some View {
        TextExampleView()
    }
}

