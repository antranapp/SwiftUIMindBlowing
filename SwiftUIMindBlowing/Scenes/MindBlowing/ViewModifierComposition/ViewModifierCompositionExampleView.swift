//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ViewModifierCompositionExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> ViewModifierCompositionExampleDemoView in
                ViewModifierCompositionExampleDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/MindBlowing/ViewModifierComposition/ViewModifierCompositionExampleDemoView.swift"
        )
        .navigationBarTitle("ViewModifier Composition")
    }
}

#if DEBUG
struct ViewModifierCompositionExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierCompositionExampleView()
    }
}
#endif
