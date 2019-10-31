//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct FontExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> FontExampleDemoView in
                FontExampleDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/Font/FontExampleDemoView.swift"
        )
        .navigationBarTitle("Font")
    }
}

#if DEBUG
struct FontExampleView_Previews: PreviewProvider {
    static var previews: some View {
        FontExampleView()
    }
}
#endif
