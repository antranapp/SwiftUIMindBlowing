//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct MiscContentView : View {

    var body: some View {
        List {
            Section(header: Text("UIKit Integration")) {
                Group {
                    NavigationButton(destination: MapKitExampleView()) {
                        ExampleCellView(
                            title: "MapKit",
                            subtitle: "Using MapKit with SwiftUI.")
                    }

                    NavigationButton(destination: DispatchTimerExampleView()) {
                        ExampleCellView(
                            title: "Dispatch Timer",
                            subtitle: "")
                    }

                    PresentationButton(destination: SFSafariViewControllerExampleView()) {
                        ExampleCellView(
                            title: "SFSafariViewController Integration",
                            subtitle: "Use SFSafariViewController inside a View")
                    }

//                    NavigationButton(destination: HorizontalCollectionExampleView()) {
//                        ExampleCellView(
//                            title: "Horizontal Collection",
//                            subtitle: "",
//                            sourceCodeURL: "https://gist.github.com/IanKeen/a783c2318f17700e52dc5ef54e6b86a2")
//                    }

                }
            }
        } // List
        .listStyle(.grouped)
        .navigationBarTitle(Text("Misc"))
    }
}

#if DEBUG
struct MiscContentView_Previews : PreviewProvider {
    static var previews: some View {
        MiscContentView()
    }
}
#endif
