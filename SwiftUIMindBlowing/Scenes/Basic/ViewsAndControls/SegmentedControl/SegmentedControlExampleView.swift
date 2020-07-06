//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct SegmentedControlExampleView: View {

    var body: some View {
        ExampleView(
            title: "SegmentedControl",
            demoContentView: SegmentedControlExampleDemoView(),
            remoteSourcePath: "Basic/ViewsAndControls/SegmentedControl/SegmentedControlExampleDemoView.swift"
        )
    }
}

struct SegmentedControlExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlExampleView()
    }
}
