//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct GeometryReaderExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: GeometryReaderExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Animation/Geometry/GeometryReader/GeometryReaderExampleDemoView.swift"
        )
        .navigationBarTitle("GeometryReader")
    }
}

struct GeometryReaderExampleView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderExampleView()
    }
}
