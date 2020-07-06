//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

// https://mobile.twitter.com/brownleemarq/status/1190896030562340865
struct FloatingActionButtonExampleView: View {

    @State private var showAllButtons = false

    private var circle: some View {
        Circle()
            .frame(width: 30, height: 30)
            .foregroundColor(.green)
    }

    var body: some View {
        ZStack {
            Group {
                circle
                    .offset(y: showAllButtons ? -90 : 0)

                circle
                    .offset(x: showAllButtons ? -70 : 0, y: showAllButtons ? -70 : 0)

                circle
                    .offset(x: showAllButtons ? -90 : 0)
            }
            .opacity(showAllButtons ? 1 : 0)

            circle
                .onTapGesture {
                    withAnimation(.default) {
                        self.showAllButtons.toggle()
                    }
            }
        }
    }
}


struct FloatingActionButtonExampleDemoView_Previews: PreviewProvider {
    static var previews: some View {
        FloatingActionButtonExampleView()
    }
}

