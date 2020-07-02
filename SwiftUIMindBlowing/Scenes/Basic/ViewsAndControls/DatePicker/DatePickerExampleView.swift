//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct DatePickerExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: DatePickerExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/DatePicker/DatePickerExampleDemoView.swift"
        )
        .navigationBarTitle("DatePicker")
    }
}


#if DEBUG
struct DatePickerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerExampleView()
    }
}
#endif
