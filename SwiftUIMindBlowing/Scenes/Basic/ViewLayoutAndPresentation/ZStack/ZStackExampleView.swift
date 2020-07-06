//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ZStackExampleView: View {

    var body: some View {
        ExampleView(
            title: "VStack",
            demoContentView: ZStackExampleDemoView(),
            remoteSourcePath: "Basic/ViewLayoutAndPresentation/ZStack/ZStackExampleDemoView.swift"
        )
    }
}


struct ZStackExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackExampleView()
    }
}

