//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ScaleEffectExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: ScaleEffectExampleDemoView(),
            remoteSourcePath: "Animation/Animation/ScaleEffect/ScaleEffectExampleDemoView.swift"
        )
        .navigationBarTitle("ScaleEffect")
    }
}


struct ScaleEffectExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ScaleEffectExampleView()
    }
}

