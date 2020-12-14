//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct FullProjectsContentView: View {

    @EnvironmentObject var store: AppStore

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
                                .contextMenu {
                                    Button(action: {
                                        store.send(.save(scenario: .fullproject_twitter))
                                    }) {
                                        Text("Pin")
                                        Image(systemName: "pin.fill")
                                    }
                                }
                        }
                    }
                }
            }
        }
    }
}


struct FullProjectsContentView_Previews: PreviewProvider {
    static var previews: some View {
        FullProjectsContentView()
    }
}

