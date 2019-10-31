//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct SegmentedControlExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> SegmentedControlExampleDemoView in
                SegmentedControlExampleDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/SegmentedControl/SegmentedControlExampleView.swift"
        )
        .navigationBarTitle(Text("SegmentedControl"))
    }
}


#if DEBUG
struct SegmentedControlExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlExampleView()
    }
}
#endif
