//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

// https://github.com/fzhlee/SwiftUI-Guide/blob/master/README_English.md#-32-32shape-path-
struct PathExampleView: View {
    var body: some View {
        ScrollView {
            Path { path in
                path.addEllipse(in: CGRect(x: 100, y: 30, width: 200, height: 200))
                path.addRoundedRect(in: CGRect(x: 100, y: 120, width: 200, height: 200), cornerSize: CGSize(width: 10, height: 10))
                path.addEllipse(in: CGRect(x: 100, y: 210, width: 200, height: 200))
            }
        }
    }
}


struct PathExampleView_Previews: PreviewProvider {
    static var previews: some View {
        PathExampleView()
    }
}

