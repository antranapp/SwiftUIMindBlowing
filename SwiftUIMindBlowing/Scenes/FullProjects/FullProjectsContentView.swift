//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct FullProjectsContentView: View {
    var body: some View {
        MainView(title: "Full Projects") {
            List{
                Section(header: Text("Custom Views")) {
                    Group {
                        NavigationLink(destination: SimpleCarouselView()) {
                            ExampleCellView(
                                title: "Simple Carousel",
                                subtitle: "A simple implementation for a carousel",
                                sourceCodeURL: "https://github.com/markwinton/carousel")
                        }
                    }
                }
            }
        }
    }
}

#if DEBUG
struct FullProjectsContentView_Previews: PreviewProvider {
    static var previews: some View {
        FullProjectsContentView()
    }
}
#endif
