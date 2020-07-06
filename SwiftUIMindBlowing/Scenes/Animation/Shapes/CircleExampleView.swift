//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

// https://github.com/fzhlee/SwiftUI-Guide/blob/master/README_English.md#-30-shape-circle-
struct CircleExampleView: View {
    var body: some View {
        VStack{
            Circle()
            Circle()
                .fill(Color.orange)
                .frame(width: 200, height: 200)
            ZStack {
                Circle().fill(Color.purple)
                Circle().fill(Color.yellow).scaleEffect(0.8)
                Circle().fill(Color.orange).scaleEffect(0.6)
            }
        }
    }
}


struct CircleExampleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleExampleView()
    }
}

