//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct GeometryReaderExampleDemoView: View {

    @State var offset: CGFloat = 0.0

    var body: some View {

        return
            GeometryReader { parentGeometry in
                VStack {
                    ScrollView {
                        VStack {
                            GeometryReader { geometry -> Text in
                                let newOffset = geometry.frame(in: .global).minY
                                if self.offset != newOffset {
                                    self.offset = newOffset
                                }
                                return Text("")
                            }
                            ForEach(0..<5) { index in
                                CellView(index: index)
                            }
                        }
                        .frame(width: parentGeometry.size.width)
                    }
                    Text("Offset: \(self.offset)")
                }
        }
    }
}

struct CellView: View {

    let index: Int

    var body: some View {
        VStack {
            Text("Text \(index)")
            Divider()
        }
    }
}

struct GeometryReaderExampleDemoView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderExampleDemoView()
    }
}
