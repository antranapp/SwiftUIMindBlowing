//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct TextExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: TextExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/Text/TextExampleDemoView.swift"
        )
        .navigationBarTitle("Text")
    }
}

#if DEBUG
struct TextExampleView_Previews: PreviewProvider {
    static var previews: some View {
        TextExampleView()
    }
}
#endif
