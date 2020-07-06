//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct NavigationBarButtonView: View {

    var body: some View {
        Text("SwiftUI")
            .navigationBarTitle("NavigationBar Button")
            .navigationBarItems(trailing:
                HStack {
                    Button("About") {
                        print("About tapped!")
                    }

                    Button("Help") {
                        print("Help tapped!")
                    }
                }
            )
    }
}


struct NavigationBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarButtonView()
    }
}

