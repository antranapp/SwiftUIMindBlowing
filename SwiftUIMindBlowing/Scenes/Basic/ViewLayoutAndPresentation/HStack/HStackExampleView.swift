//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct HStackExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: HStackExampleDemoView(),
            remoteSourcePath: "Basic/ViewLayoutAndPresentation/HStack/HStackExampleDemoView.swift"
        )
        .navigationBarTitle("HStack")
    }
}


struct HStackExampleView_Previews: PreviewProvider {
    static var previews: some View {
        HStackExampleView()
    }
}

