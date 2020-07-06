//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct DividerExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: DividerExampleDemoView(),
            remoteSourcePath: "Basic/ViewLayoutAndPresentation/Divider/DividerExampleDemoView.swift"
        )
        .navigationBarTitle("Spacer")
    }
}


struct DividerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        DividerExampleView()
    }
}

