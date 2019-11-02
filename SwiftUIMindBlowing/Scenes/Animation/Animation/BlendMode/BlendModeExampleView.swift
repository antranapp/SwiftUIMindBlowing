//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct BlendModeExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> BlendModeExampleDemoView in
                BlendModeExampleDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Animation/Animation/BlendMode/BlendModeExampleDemoView.swift"
        )
        .navigationBarTitle("BlendMode")
    }
}

#if DEBUG
struct BlendModeExampleView_Previews: PreviewProvider {
    static var previews: some View {
        BlendModeExampleView()
    }
}
#endif
