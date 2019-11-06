//
//  Copyright © 2019 An Tran. All rights reserved.
//

import ModalView
import SwiftUI

struct MindBlowingContentView: View {

    var body: some View {
        NavigationView {
            ModalPresenter() {
                List {
                    NavigationLink(destination:
                        ExampleView(
                            title: "View Modifier composition",
                            demoContentView: ViewModifierCompositionExampleDemoView(),
                            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/MindBlowing/ViewModifierCompositionExampleView.swift")) {
                        ExampleCellView(
                            title: "View Modifier composition",
                            subtitle: "View and Modifier composition",
                            sourceCodeURL: "https://twitter.com/alex_persian/status/1141880682840547328")
                    }
                    NavigationLink(destination:
                        ExampleView(
                            title: "Floating Action Button",
                            demoContentView: FloatingActionButtonExampleView(),
                            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/MindBlowing/FloatingActionButtonExampleView.swift")) {
                        ExampleCellView(
                            title: "Floating Action Button",
                            subtitle: "",
                            sourceCodeURL: "https://mobile.twitter.com/brownleemarq/status/1190896030562340865")
                    }
                    NavigationLink(destination:
                        ExampleView(
                            title: "Stretchy Header",
                            demoContentView: StretchyHeaderExampleView(),
                            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/MindBlowing/StretchyHeaderExampleView.swift")) {
                        ExampleCellView(
                            title: "Stretchy Header",
                            subtitle: "",
                            sourceCodeURL: "https://gist.github.com/beliy/f46a34b03827b2a8238b6daa2a356bef")
                    }
                }
            }
            .navigationBarTitle("Mind Blowing")
        }
    }
}

#if DEBUG
struct MindBlowingContentView_Previews: PreviewProvider {
    static var previews: some View {
        MindBlowingContentView()
    }
}
#endif
