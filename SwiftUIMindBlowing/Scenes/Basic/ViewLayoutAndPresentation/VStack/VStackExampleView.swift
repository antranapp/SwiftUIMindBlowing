//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct VStackExampleView: View {

    var body: some View {
        ExampleView(
            title: "VStack",
            demoContentView: VStackExampleDemoView(),
            remoteSourcePath: "Basic/ViewLayoutAndPresentation/VStack/VStackExampleDemoView.swift"
        )
    }
}

struct VStackExampleView_Previews: PreviewProvider {
    static var previews: some View {
        VStackExampleView()
    }
}

