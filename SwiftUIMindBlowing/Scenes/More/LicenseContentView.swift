//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct LicenseContentView : View {
    var body: some View {
        List {
            NavigationLink(destination: SFSymbolsContentView()) {
                Text("SFSymbols")
            }

            NavigationLink(destination: MiscContentView()) {
                Text("Misc")
            }
        }
        .navigationBarTitle("Licenses")
    }
}

#if DEBUG
struct LicenseContentView_Previews : PreviewProvider {
    static var previews: some View {
        LicenseContentView()
    }
}
#endif
