//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct BasicContentCellView : View {

    let title: String
    let subtitle: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            Text(subtitle)
                .lineLimit(nil)
                .font(.subheadline)
                .foregroundColor(Color.gray)
                .minimumScaleFactor(0.5)
        }
    }
}

#if DEBUG
struct BasicContentCellView_Previews : PreviewProvider {
    static var previews: some View {
        BasicContentCellView(title: "Title", subtitle: "Subtitle")
    }
}
#endif
