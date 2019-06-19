//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct MainContentCellView : View {

    let title: String
    let subtitle: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            Text(subtitle)
                .lineLimit(2)
                .font(.subheadline)
                .minimumScaleFactor(0.5)
        }
    }
}

#if DEBUG
struct MainContentCellView_Previews : PreviewProvider {
    static var previews: some View {
        MainContentCellView(title: "Title", subtitle: "Subtitle")
    }
}
#endif
