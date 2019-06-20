//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct DatePickerExampleView : View {

    @State private var date = Date()

    private var formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }()

    @State var string = ""
    var body: some View {
        VStack {
            Text("\(formatter.string(from: date))")
            DatePicker($date,
                       minimumDate: Calendar.current.date(byAdding: .year, value: -1, to: date),
                       maximumDate: Date(),
                       displayedComponents: .date)
        }
    }
}

#if DEBUG
struct DatePickerExampleView_Previews : PreviewProvider {
    static var previews: some View {
        DatePickerExampleView()
    }
}
#endif
