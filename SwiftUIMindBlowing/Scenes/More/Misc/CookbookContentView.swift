//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct CookbookContentView: View {

    var body: some View {
        List {
            Section(header: Text("UIKit Integration")) {
                Group {
                    NavigationLink(destination: MapKitExampleView()) {
                        ExampleCellView(
                            title: "MapKit",
                            subtitle: "Using MapKit with SwiftUI.")
                    }

                    NavigationLink(destination: DispatchTimerExampleView()) {
                        ExampleCellView(
                            title: "Dispatch Timer",
                            subtitle: "")
                    }

                    NavigationLink(destination: SFSafariViewControllerExampleView()) {
                        ExampleCellView(
                            title: "SFSafariViewController Integration",
                            subtitle: "Use SFSafariViewController inside a View")
                    }
                }
            }
            Section(header: Text("Receipts")) {
                Group {
                    NavigationLink(destination: ReceiptVStackFullScreenView()) {
                        ExampleCellView(
                            title: "How to make VStack fill the screen?",
                            subtitle: "")
                    }
                }
            }
        } // List
        .navigationBarTitle("Misc")
    }
}

#if DEBUG
struct MiscContentView_Previews: PreviewProvider {
    static var previews: some View {
        CookbookContentView()
    }
}
#endif
