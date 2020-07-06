//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct AlertExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: AlertExampleDemoView(),
            remoteSourcePath: "Basic/ViewLayoutAndPresentation/Alert/AlertExampleDemoView.swift"
        )
        .navigationBarTitle("Alert")
    }
}


struct AlertExampleView_Previews: PreviewProvider {
    static var previews: some View {
        AlertExampleView()
    }
}

