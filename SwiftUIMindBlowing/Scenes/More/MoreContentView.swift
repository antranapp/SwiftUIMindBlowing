//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct MoreContentView: View {

    var body: some View {
        MainView(title: "More") {
            Group {
                List {
                    NavigationLink(destination: SFSymbolsContentView()) {
                        Text("SFSymbols")
                    }

                    NavigationLink(destination: CookbookContentView()) {
                        Text("Cookbook - How to do X?")
                    }
                }
                Text("Chose a topic in More")
            }
        }
    }
}


struct MoreContentView_Previews: PreviewProvider {
    static var previews: some View {
        MoreContentView()
    }
}

