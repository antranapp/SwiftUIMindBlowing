//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ScrollViewExampleView: View {

    var body: some View {
        ExampleView(
            title: "ScrollView",
            demoContentView: ScrollViewExampleDemoView(),
            remoteSourcePath: "Basic/ViewLayoutAndPresentation/ScrollView/ScrollViewExampleDemoView.swift"
        )
    }
}

struct ScrollViewExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewExampleView()
    }
}

