//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ScaleEffectExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> ScaleEffectExampleDemoView in
                ScaleEffectExampleDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Animation/Animation/ScaleEffect/ScaleEffectExampleDemoView.swift"
        )
        .navigationBarTitle("ScaleEffect")
    }
}

#if DEBUG
struct ScaleEffectExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ScaleEffectExampleView()
    }
}
#endif
