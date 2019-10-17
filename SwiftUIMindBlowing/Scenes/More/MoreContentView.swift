//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct MoreContentView : View {

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: SFSymbolsContentView()) {
                    Text("SFSymbols")
                }

                NavigationLink(destination: MiscContentView()) {
                    Text("Misc")
                }
            }
            .navigationBarTitle(Text("More"))
        }
    }
}

#if DEBUG
struct MoreContentView_Previews : PreviewProvider {
    static var previews: some View {
        MoreContentView()
    }
}
#endif
