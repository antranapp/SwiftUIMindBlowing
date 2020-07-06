//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct FontExampleView: View {

    var body: some View {
        ExampleView(
            title: "Font",
            demoContentView: FontExampleDemoView(),
            remoteSourcePath: "Basic/ViewsAndControls/Font/FontExampleDemoView.swift"
        )
    }
}


struct FontExampleView_Previews: PreviewProvider {
    static var previews: some View {
        FontExampleView()
    }
}

