//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct RotationEffectExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: RotationEffectExampleDemoView(flipped: false),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Animation/Animation/RotationEffect/RotationEffectExampleDemoView.swift"
        )
        .navigationBarTitle("RotationEffect")
    }
}

#if DEBUG
struct RotationEffectExampleView_Previews: PreviewProvider {
    static var previews: some View {
        RotationEffectExampleView()
    }
}
#endif
