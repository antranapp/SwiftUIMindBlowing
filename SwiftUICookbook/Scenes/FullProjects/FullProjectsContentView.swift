//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI
import GitHubSearchWithSwiftUIPackage
import SwiftUICalculatorPackage
import WeatherPackage
import WWDCPlayerPackage

struct FullProjectsContentView : View {
    var body: some View {
        NavigationView {
            List {

                Group {
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

                    PresentationButton(destination: SwiftUICalculatorPackage()) {
                        ExampleCellView(
                            title: "SwiftUICalculator",
                            subtitle: "A calculator app using SwiftUI which is introduced in WWDC19.",
                            sourceCodeURL: "https://github.com/hotchner/SwiftUICalculator")
                    }

                    PresentationButton(destination: WeatherPackage()) {
                        ExampleCellView(
                            title: "Weather",
                            subtitle: "Weather is a simple app that displays weather in SwiftUI.",
                            sourceCodeURL: "https://github.com/bpisano/Weather")
                    }

                    PresentationButton(destination: WWDCPlayerPackage()) {
                        ExampleCellView(
                            title: "Weather",
                            subtitle: "Watch WWDC19 sessions with WWDCPlayer🤖.",
                            sourceCodeURL: "https://github.com/yoonms/WWDCPlayer")
                    }
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
