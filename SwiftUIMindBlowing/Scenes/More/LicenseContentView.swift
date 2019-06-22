//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct LicenseContentView : View {
    var body: some View {
        List {
            NavigationButton(destination: SFSymbolsContentView()) {
                Text("SFSymbols")
            }

            NavigationButton(destination: MiscContentView()) {
                Text("Misc")
            }
        }
        .navigationBarTitle(Text("Licenses"))
    }
}

#if DEBUG
struct LicenseContentView_Previews : PreviewProvider {
    static var previews: some View {
        LicenseContentView()
    }
}
#endif
