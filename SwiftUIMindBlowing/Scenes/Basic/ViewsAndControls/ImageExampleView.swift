//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ImageExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> ImageExampleDemoView in
                ImageExampleDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/ImageExampleView.swift"
        )
        .navigationBarTitle("Image")
    }
}

struct ImageExampleDemoView: View {
    
    var body: some View {
        VStack {
            Image("swiftui")

            // Add an example for remote images.
        }
        .navigationBarTitle(Text("Image"))
        .padding()

    }
}

#if DEBUG
struct ImageExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ImageExampleView()
    }
}
#endif
