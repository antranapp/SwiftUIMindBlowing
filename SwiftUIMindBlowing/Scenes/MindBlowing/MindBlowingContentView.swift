//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct MindBlowingContentView : View {

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ViewModifierCompositionExampleView()) {
                    ExampleCellView(
                        title: "View Modifier composition",
                        subtitle: "View and Modifier composition",
                        sourceCodeURL: "https://twitter.com/alex_persian/status/1141880682840547328")
                }
            }
            .navigationBarTitle("Mind Blowing")
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
