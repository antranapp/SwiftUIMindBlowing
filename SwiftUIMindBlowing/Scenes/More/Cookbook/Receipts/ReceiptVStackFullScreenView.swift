//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

// Source: https://stackoverflow.com/questions/56487323/make-a-vstack-fill-the-width-of-the-screen-in-swiftui
struct ReceiptVStackFullScreenView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Use frame modififer to strecht the VStackView to fullscreen.")
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .background(Color.red)
        .navigationBarTitle("VStack Fullscreen")
    }
}

struct ReceiptVStackFullScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ReceiptVStackFullScreenView()
    }
}
