//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct SpacerExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: SpacerExampleDemoView(),
            remoteSourcePath: "Basic/ViewLayoutAndPresentation/Spacer/SpacerExampleDemoView.swift"
        )
        .navigationBarTitle("Spacer")
    }
}

struct SpacerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerExampleView()
    }
}
