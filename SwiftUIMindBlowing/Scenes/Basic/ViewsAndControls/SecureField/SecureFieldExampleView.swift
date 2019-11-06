//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct SecureFieldExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: SecureFieldExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/SecureField/SecureFieldExampleView.swift"
        )
        .navigationBarTitle("SecureField")
    }
}

#if DEBUG
struct SecureFieldExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldExampleView()
    }
}
#endif
