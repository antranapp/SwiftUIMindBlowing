//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct FontExampleDemoView: View {

    var body: some View {
        VStack(alignment: .leading) {
            Text("Large title font").font(.largeTitle)
            Text("Title font").font(.title)
            Text("Headline font").font(.headline)
            Text("Subheadline font").font(.subheadline)
            Text("Body font").font(.body)
            Text("Callout font").font(.callout)
            Text("Caption font").font(.caption)
            Text("Footnote font").font(.footnote)
        }
        .navigationBarTitle(Text("Font"))
        .padding()
    }
}
