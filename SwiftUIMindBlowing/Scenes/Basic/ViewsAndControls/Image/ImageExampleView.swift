//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ImageExampleView: View {

    var body: some View {
        ExampleView(
            title: "Image",
            demoContentView: ImageExampleDemoView(),
            remoteSourcePath: "Basic/ViewsAndControls/Image/ImageExampleDemoView.swift"
        )
    }
}


struct ImageExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ImageExampleView()
    }
}

