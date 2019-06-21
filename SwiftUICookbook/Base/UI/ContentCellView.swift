//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ContentCellView : View {

    let title: String
    let subtitle: String
    var sourceCodeURL: String? = nil

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
        ContentCellView(title: "Title", subtitle: "Subtitle", sourceCodeURL: "https://www.github.com")
    }
}
#endif
