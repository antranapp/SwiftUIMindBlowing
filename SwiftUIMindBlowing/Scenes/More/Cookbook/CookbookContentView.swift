//
//  Copyright © 2019 An Tran. All rights reserved.
//

import ModalView
import SwiftUI

struct CookbookContentView: View {

    var body: some View {
        ModalPresenter() {
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

                        ModalLink(destination: SFSafariViewControllerExampleView()) {
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

                        NavigationLink(destination: NavigationBarButtonView()) {
                            ExampleCellView(
                                title: "How to add items to a navigation bar?",
                                subtitle: "")
                        }

                        NavigationLink(destination: AutoFocusTextFieldView()) {
                            ExampleCellView(
                                title: "How to make TextField become first responder?",
                                subtitle: "")
                        }

                        NavigationLink(destination: TwoEqualWidthColumnsExampleView()) {
                            ExampleCellView(
                                title: "How to make two equal width columns?",
                                subtitle: "")
                        }

                        NavigationLink(destination: OpenURLInDefaultBrowserView()) {
                            ExampleCellView(
                                title: "How to open an url in the default browser?",
                                subtitle: "")
                        }

                    
                    }
                }
            } // List
        }
        .navigationBarTitle("Cookbook")
    }
}


struct MiscContentView_Previews: PreviewProvider {
    static var previews: some View {
        CookbookContentView()
    }
}

