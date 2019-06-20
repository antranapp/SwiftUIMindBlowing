//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct PresentationButtonExampleView : View {
    
    var body: some View {
        PresentationButton(destination: PresentedView()) {
            Text("Present a new view")
        }
        .navigationBarTitle(Text("PresentationButton"))
    }
}

private struct PresentedView: View {
    var body: some View {
        Text("View is presented modally.")
    }
}

#if DEBUG
struct PresentationButtonExampleView_Previews : PreviewProvider {
    static var previews: some View {
        PresentationButtonExampleView()
    }
}
#endif
