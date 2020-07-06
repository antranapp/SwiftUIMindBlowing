//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ForEachExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: ForEachExampleDemoView(),
            remoteSourcePath: "Basic/ViewLayoutAndPresentation/ForEach/ForEachExampleDemoView.swift"
            )
            .navigationBarTitle("ForEach")
    }
}


struct ForEachExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachExampleView()
    }
}

