//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct MoreContentView : View {

    var body: some View {
        NavigationView {
            List {
                NavigationButton(destination: SFSymbolsContentView()) {
                    Text("SFSymbols")
                }

                NavigationButton(destination: MiscContentView()) {
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
