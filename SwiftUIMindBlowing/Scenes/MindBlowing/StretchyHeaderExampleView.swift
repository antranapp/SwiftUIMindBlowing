//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

// https://gist.github.com/beliy/f46a34b03827b2a8238b6daa2a356bef

private let kImage = "swiftui"

private let kTitle = "Stretchy header in SwiftUI"

private let kContent = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
"""

private let kHeaderHeight: CGFloat = 300

struct StretchyHeaderExampleView: View {

    var body: some View {

        ScrollView {
            VStack(alignment: .leading) {
                GeometryReader { (geometry: GeometryProxy) in
                    if geometry.frame(in: .global).minY <= 0 {
                        Image(kImage).resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width,
                                   height: geometry.size.height)
                    } else {
                        Image(kImage).resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(y: -geometry.frame(in: .global).minY)
                            .frame(width: geometry.size.width,
                                   height: geometry.size.height + geometry.frame(in: .global).minY)
                    }
                }
                .frame(maxHeight: kHeaderHeight)

                VStack(alignment: .leading, spacing: 8) {
                    Text(kTitle)
                        .font(.headline)
                    Text(kContent)
                        .font(.body)
                }
                .padding()
            }
        }
    }
}


struct StretchyHeaderExampleView_Previews: PreviewProvider {
    static var previews: some View {
        StretchyHeaderExampleView()
    }
}

