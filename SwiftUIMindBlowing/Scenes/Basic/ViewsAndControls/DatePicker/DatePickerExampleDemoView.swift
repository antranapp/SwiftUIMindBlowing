//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct DatePickerExampleDemoView: View {

    @State private var date = Date()

    private var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }()

    @State var string = ""
    var body: some View {
        VStack {
            Text("The selected date is \(date, formatter: dateFormatter)")
            DatePicker(
                "Select a date",
                selection: $date,
                in: Calendar.current.date(byAdding: .year, value: -1, to: date)!...Date(),
                displayedComponents: .date
            )

            DatePicker(selection: $date, in: ...Date(), displayedComponents: .date) {
                Text("Select a date")
            }
        }
        .navigationBarTitle(Text("DatePicker"))
        .padding()

    }
}
