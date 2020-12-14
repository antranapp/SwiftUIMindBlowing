//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ImageExampleView: View {

    var body: some View {
        DemoView (
            title: "Image",
            remoteSourcePath: "Basic/ViewsAndControls/Image/ImageExampleDemoView.swift"
        ) {
            ImageExampleDemoView()
        }
    }
}


struct ImageExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ImageExampleView()
    }
}

