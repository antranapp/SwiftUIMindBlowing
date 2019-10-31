//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct VStackExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> HStackExampleDemoView in
                HStackExampleDemoView()
        },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewLayoutAndPresentation/VStack/VStackExampleDemoView.swift"
        )
            .navigationBarTitle("VStack")
    }
}

#if DEBUG
struct VStackExampleView_Previews: PreviewProvider {
    static var previews: some View {
        VStackExampleView()
    }
}
#endif
