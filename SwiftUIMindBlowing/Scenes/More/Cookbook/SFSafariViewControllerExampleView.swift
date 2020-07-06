//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController,
                                context: UIViewControllerRepresentableContext<SafariView>) {

    }

}

struct SFSafariViewControllerExampleView: View {
    var body: some View {
        SafariView(url: URL(string: "https://www.google.com")!)
    }
}


struct SFSafariViewControllerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SFSafariViewControllerExampleView()
    }
}

