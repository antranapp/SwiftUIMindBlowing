//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct MindBlowingContentView : View {

    var body: some View {
        NavigationView {
            List {
                NavigationButton(destination: GameView().environmentObject(GameLogic())) {
                    ExampleCellView(
                        title: "SwiftUI2048",
                        subtitle: "2048 Game implemented in SwiftUI.",
                        sourceCodeURL: "https://github.com/unixzii/SwiftUI-2048")
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
