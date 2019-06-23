//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI
import ProgressRingPackage

struct MindBlowingContentView : View {

    var body: some View {
        NavigationView {
            List {
                NavigationButton(destination: PureGeniusExampleView()) {
                    ExampleCellView(
                        title: "Pure Genius Animation",
                        subtitle: "PureGenius.",
                        sourceCodeURL: "https://github.com/joeynelson42/PureGenius")
                }

                NavigationButton(destination: FacebookReactionExampleView()) {
                    ExampleCellView(
                        title: "Facebook Reaction",
                        subtitle: "Facebook Reaction",
                        sourceCodeURL: "https://twitter.com/fabiogiolito/status/1142226669471748096")
                }

                NavigationButton(destination: ViewModifierCompositionExampleView()) {
                    ExampleCellView(
                        title: "View Modifier composition",
                        subtitle: "View and Modifier composition",
                        sourceCodeURL: "https://twitter.com/alex_persian/status/1141880682840547328")
                }

                NavigationButton(destination: ProgressRingPackage()) {
                    ExampleCellView(
                        title: "Progress Ring",
                        subtitle: "A progress ring view made with SwiftUI and Combine.",
                        sourceCodeURL: "https://github.com/hugolundin/ProgressRing")
                }

            }
            .listStyle(.grouped)
            .navigationBarTitle(Text("Mind Blowing"))
        }
    }
}

#if DEBUG
struct MindBlowingContentView_Previews : PreviewProvider {
    static var previews: some View {
        MindBlowingContentView()
    }
}
#endif
