//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI
import Combine

// https://stackoverflow.com/questions/56491881/move-textfield-up-when-thekeyboard-has-appeared-by-using-swiftui-ios
struct VenueDataModel {
    let name: String
    let street: String
    let city: String
    let country: String
    let postalCode: String
}

struct AdaptsToSoftwareKeyboard: ViewModifier {
    @State var currentHeight: CGFloat = 0

    func body(content: Content) -> some View {
        content
            .padding(.bottom, currentHeight)
            .edgesIgnoringSafeArea(.bottom)
            .onAppear(perform: subscribeToKeyboardEvents)
    }

    private func subscribeToKeyboardEvents() {
        NotificationCenter.Publisher(
            center: NotificationCenter.default,
            name: UIResponder.keyboardWillShowNotification
        ).compactMap { notification in
            notification.userInfo?["UIKeyboardFrameEndUserInfoKey"] as? CGRect
        }.map { rect in
            rect.height
        }.subscribe(Subscribers.Assign(object: self, keyPath: \.currentHeight))

        NotificationCenter.Publisher(
            center: NotificationCenter.default,
            name: UIResponder.keyboardWillHideNotification
        ).compactMap { notification in
            CGFloat.zero
        }.subscribe(Subscribers.Assign(object: self, keyPath: \.currentHeight))
    }
}

struct KeyboardAwareExampleView: View {

    @ObjectBinding var venue: VenueDataModel

    var body: some View {
        // Apply to any view with an instrinsic scroll view – ScrollView, Form, List, etc
        Form {
            Section {
                TextField($venue.name, placeholder: Text("Venue Name"))
            }
            Section(header: Text("Address")) {
                TextField($venue.street, placeholder: Text("Street"))
                TextField($venue.city, placeholder: Text("City"))
                TextField($venue.country, placeholder: Text("Country"))
                TextField($venue.postalCode, placeholder: Text("Postcode/ZIP"))
            }
            // etc.
            }
            .navigationBarTitle(Text("Keyboardaware ScrollView"))
            .modifier(AdaptsToSoftwareKeyboard()) // <-- apply the modifier here
    }
}

struct KeyboardAwareExampleView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardAwareExampleView()
    }
}
