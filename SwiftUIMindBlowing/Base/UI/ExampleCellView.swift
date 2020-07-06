//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ExampleCellView: View {

    let title: String
    var subtitle: String? = nil
    var sourceCodeURL: String? = nil

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            Text(subtitle ?? "")
                .lineLimit(nil)
                .font(.subheadline)
                .foregroundColor(Color.gray)
        }
    }
}


struct ExampleCellView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleCellView(title: "Title", subtitle: "A view that arranges its children in a horizontal line. A view that arranges its children in a horizontal line.", sourceCodeURL: "https://www.github.com")
    }
}

