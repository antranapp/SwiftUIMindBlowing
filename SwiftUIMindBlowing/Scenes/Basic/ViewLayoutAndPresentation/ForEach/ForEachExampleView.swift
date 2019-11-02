//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ForEachExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> ForEachExampleDemoView in
                ForEachExampleDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewLayoutAndPresentation/ForEach/ForEachExampleDemoView.swift"
            )
            .navigationBarTitle("ForEach")
    }
}

#if DEBUG
struct ForEachExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachExampleView()
    }
}
#endif
