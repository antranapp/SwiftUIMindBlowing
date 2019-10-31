//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct HStackExampleDemoView: View {

    var body: some View {
        List {
            HStack(alignment: .top) {
                Text("First part")
                Text("and second part are on one line")
            }

            HStack(alignment: .top) {
                Text("Top Alignment")
                Image("swiftui")
            }

            HStack(alignment: .bottom) {
                Text("Bottom Alignment")
                Image("swiftui")
            }

            HStack(alignment: .firstTextBaseline) {
                Text("FirstTextBaseline Alignment")
                    .border(Color.black)

                Text("This is a very long text. This is a very long text. This is a very long text. This is a very long text. ")
                    .border(Color.black)
                    .lineLimit(4)
            }

            HStack(alignment: .lastTextBaseline) {
                Text("LastTextBaseline Alignment")
                    .border(Color.black)

                Text("This is a very long text. This is a very long text. This is a very long text. This is a very long text. ")
                    .border(Color.black)
                    .lineLimit(4)
            }

            HStack(alignment: .lastTextBaseline) {
                Text("This is a short Text")
                    .border(Color.black)

                Text("This is a very long text with higher layour priority. It will stretch to get more space from parent view.")
                    .border(Color.black)
                    .layoutPriority(1)
                    .lineLimit(4)
            }
        }
        .navigationBarTitle(Text("HStack"))
    }
}
