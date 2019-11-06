//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct SpacerExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: SpacerExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewLayoutAndPresentation/Spacer/SpacerExampleDemoView.swift"
        )
        .navigationBarTitle("Spacer")
    }
}

struct SpacerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerExampleView()
    }
}
