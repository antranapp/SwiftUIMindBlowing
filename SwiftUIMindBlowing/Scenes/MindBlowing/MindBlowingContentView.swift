//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct MindBlowingContentView : View {

    var body: some View {
        NavigationView {
            List {
                NavigationButton(destination: PureGeniusExampleView()) {
                    ExampleCellView(
                        title: "PureGeniusExampleView",
                        subtitle: "PureGenius.",
                        sourceCodeURL: "https://github.com/joeynelson42/PureGenius")
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
