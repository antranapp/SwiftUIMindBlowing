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
