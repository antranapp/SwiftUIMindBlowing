//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct AnimationContentView : View {

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Basic")) {
                    Group {
                        NavigationButton(destination: RotationEffectExampleView()) {
                            ExampleCellView(
                                title: "RotationEffect",
                                subtitle: "Rotate a view.")
                        }
                        NavigationButton(destination: ScaleEffectExampleView()) {
                            ExampleCellView(
                                title: "ImageEffect",
                                subtitle: "Scale an image.")
                        }
                    }
                }
            } // List
            .listStyle(.grouped)
            .navigationBarTitle(Text("Animation"))
        }
    }
}

#if DEBUG
struct AnimationContentView_Previews : PreviewProvider {
    static var previews: some View {
        AnimationContentView()
    }
}
#endif
