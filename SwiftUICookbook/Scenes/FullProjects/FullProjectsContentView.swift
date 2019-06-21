//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI
import GitHubSearchWithSwiftUIPackage

struct FullProjectsContentView : View {
    var body: some View {
        NavigationView {
            List {
                PresentationButton(destination: SwiftUI2048ExampleView()) {
                    ExampleCellView(
                        title: "SwiftUI2048",
                        subtitle: "2048 Game implemented in SwiftUI.",
                        sourceCodeURL: "https://github.com/unixzii/SwiftUI-2048")
                }

                PresentationButton(destination: GitHubSearchWithSwiftUIPackage()) {
                    ExampleCellView(
                        title: "GitHubSearchWithSwiftUI",
                        subtitle: "GitHubSearchWithSwiftUI is an example that using Combine and SwiftUI.",
                        sourceCodeURL: "https://github.com/marty-suzuki/GitHubSearchWithSwiftUI")
                }
            }
            .listStyle(.grouped)
            .navigationBarTitle(Text("Full Projects"))
        }
    }
}

#if DEBUG
struct FullProjectsContentView_Previews : PreviewProvider {
    static var previews: some View {
        FullProjectsContentView()
    }
}
#endif
