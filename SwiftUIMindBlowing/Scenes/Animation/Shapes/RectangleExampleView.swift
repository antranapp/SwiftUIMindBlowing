//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

// https://github.com/fzhlee/SwiftUI-Guide/blob/master/README_English.md#-31-shape-rectangle-
struct RectangleExampleView: View {
    var body: some View {
        ScrollView {
            Rectangle()
            Rectangle()
                .fill(Color.orange)
                .frame(width: 200, height: 200)

            ZStack {
                Rectangle().fill(Color.purple)
                    .frame(width: 300, height: 200)

                Rectangle().fill(Color.yellow)
                    .frame(width: 300, height: 200)
                    .scaleEffect(0.8)

                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 300, height: 200)
                    .scaleEffect(0.6)
            }

            RoundedRectangle(cornerRadius: 120)

            RoundedRectangle(cornerSize: CGSize(width: 100, height: 40)).frame(width: 300, height: 200)

            RoundedRectangle(cornerRadius: 100, style: RoundedCornerStyle.continuous)
        }
        .navigationBarTitle("Rectangle", displayMode: .inline)
    }
}


struct RectangleExampleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleExampleView()
    }
}

