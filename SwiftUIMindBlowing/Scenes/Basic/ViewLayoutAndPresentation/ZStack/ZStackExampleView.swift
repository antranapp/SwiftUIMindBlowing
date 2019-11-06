//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ZStackExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: ZStackExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewLayoutAndPresentation/ZStack/ZStackExampleDemoView.swift"
        )
            .navigationBarTitle("VStack")
    }
}

#if DEBUG
struct ZStackExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackExampleView()
    }
}
#endif
