//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct TwoEqualWidthColumnsExampleView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            Rectangle()
                .fill(Color.blue)
                .frame(minWidth: 0, maxWidth: .infinity)
            Rectangle()
                .fill(Color.red)
                .frame(minWidth: 0, maxWidth: .infinity)
        }
        .navigationBarTitle("2 equal width columns", displayMode: .inline)
    }
}


struct TwoEqualWidthColumnsExampleView_Previews: PreviewProvider {
    static var previews: some View {
        TwoEqualWidthColumnsExampleView()
    }
}

