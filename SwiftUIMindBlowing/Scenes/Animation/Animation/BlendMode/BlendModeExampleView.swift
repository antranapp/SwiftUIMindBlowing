//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct BlendModeExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: BlendModeExampleDemoView(),
            remoteSourcePath: "Animation/Animation/BlendMode/BlendModeExampleDemoView.swift"
        )
        .navigationBarTitle("BlendMode")
    }
}


struct BlendModeExampleView_Previews: PreviewProvider {
    static var previews: some View {
        BlendModeExampleView()
    }
}

