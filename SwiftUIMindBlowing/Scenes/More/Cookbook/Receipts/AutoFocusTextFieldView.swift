//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct AutoFocusTextFieldView: View {

    var body: some View {
        DemoView(
            title: "Autofocus TextField",
            remoteSourcePath: "More/Cookbook/Receipts/AutoFocusTextFieldDemoView.swift"
        ) {
            AutoFocusTextFieldDemoView()
        }
    }
}

/**
 From: https://stackoverflow.com/a/56508132/452115

 SwiftUI's TextField can not gain focus programmatically at this moment.
 We need to wrap UIKit's UITextField and use `becomeFirstResponder` to set its focus programmatically.
**/

struct AutoFocusTextFieldDemoView: View {

    @State var text: String = ""

    var body: some View {
        AutoFocusTextField(text: $text, isFirstResponder: true)
            .frame(width: 300, height: 50)
            .background(Color.red)
    }
}

struct AutoFocusTextField: UIViewRepresentable {

    class Coordinator: NSObject, UITextFieldDelegate {

        @Binding var text: String
        var didBecomeFirstResponder = false

        init(text: Binding<String>) {
            _text = text
        }

        func textFieldDidChangeSelection(_ textField: UITextField) {
            text = textField.text ?? ""
        }

    }

    @Binding var text: String
    var isFirstResponder: Bool = false

    func makeUIView(context: UIViewRepresentableContext<AutoFocusTextField>) -> UITextField {
        let textField = UITextField(frame: .zero)
        textField.delegate = context.coordinator
        return textField
    }

    func makeCoordinator() -> AutoFocusTextField.Coordinator {
        return Coordinator(text: $text)
    }

    func updateUIView(_ uiView: UITextField, context: UIViewRepresentableContext<AutoFocusTextField>) {
        uiView.text = text
        if isFirstResponder && !context.coordinator.didBecomeFirstResponder  {
            uiView.becomeFirstResponder()
            context.coordinator.didBecomeFirstResponder = true
        }
    }
}
