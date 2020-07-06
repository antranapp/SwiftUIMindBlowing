//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct DatePickerExampleView: View {

    var body: some View {
        ExampleView(
            title: "DatePicker",
            demoContentView: DatePickerExampleDemoView(),
            remoteSourcePath: "Basic/ViewsAndControls/DatePicker/DatePickerExampleDemoView.swift"
        )
    }
}



struct DatePickerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerExampleView()
    }
}

