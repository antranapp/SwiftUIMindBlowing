//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct TextFieldExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> TextFieldExampleDemoView in
                TextFieldExampleDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/TextField/TextFieldExampleDemoView.swift"
        )
        .navigationBarTitle("TextField")
    }
}

#if DEBUG
struct TextFieldExampleView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExampleView()
    }
}
#endif
