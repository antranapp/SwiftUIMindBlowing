//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct HStackExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> HStackExampleDemoView in
                HStackExampleDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewLayoutAndPresentation/HStack/HStackExampleDemoView.swift"
        )
        .navigationBarTitle("HStack")
    }
}

#if DEBUG
struct HStackExampleView_Previews: PreviewProvider {
    static var previews: some View {
        HStackExampleView()
    }
}
#endif
