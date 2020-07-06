//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

// https://www.ioscreator.com/tutorials/swiftui-basic-shapes-tutorial
struct RoundedRectangleExampleView: View {
    var body: some View {
        VStack {
            Rectangle()
                .stroke(Color.blue, lineWidth: 10)
                .frame(width: 100, height: 100)

            Circle()
                .fill(Color.red)
                .frame(width: 100, height: 100)

            Capsule()
                .fill(Color.green)
                .overlay(
                    Capsule()
                        .stroke(Color.black, lineWidth: 10)
                )
                .frame(width: 200, height: 100)

            RoundedRectangle(cornerRadius: 20)
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
        }
    }
}


struct RoundedRectangleExampleView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleExampleView()
    }
}

