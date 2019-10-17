//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct FullProjectsContentView : View {
    var body: some View {
        NavigationView {
            List{
                Text("")
            }
            .navigationBarTitle("Full Projects")
        }
    }
}

#if DEBUG
struct FullProjectsContentView_Previews : PreviewProvider {
    static var previews: some View {
        FullProjectsContentView()
    }
}
#endif
