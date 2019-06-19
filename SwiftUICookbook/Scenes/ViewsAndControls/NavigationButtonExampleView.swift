//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct NavigationButtonExampleView : View {
    var body: some View {
        NavigationButton(destination: PushedView()) {
            Text("Push a new view")
        }
        .navigationBarTitle(Text("NavigationButton"))
    }
}

private struct PushedView: View {
    var body: some View {
        Text("View is pushed.")
    }
}

#if DEBUG
struct NavigationButtonExampleView_Previews : PreviewProvider {
    static var previews: some View {
        NavigationButtonExampleView()
    }
}
#endif
