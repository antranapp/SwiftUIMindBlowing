//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

// SwiftUI Text Initializer replacing occurences of a given word with a colored version.
// Made by Manuel Gomez (@codingManu) on 2019/06/19
extension Text {
    public init<S>(_ content: S, making: S, _ color: Color) where S : StringProtocol {
        let comps = content.components(separatedBy: making)

        var baseText = Text("")

        if comps[0] != making {
            baseText = Text(comps[0])
        }

        for component in comps[1...] {
            baseText = baseText + (Text(making).color(color))
            baseText = baseText + (Text(component))
        }

        self = baseText
    }
}

// Tokenizer extension copied from some comment on StackOverflow. Can't find the source now.
extension String {

    func tokenize() -> [String] {
        let inputRange = CFRangeMake(0, self.count)
        let flag = UInt(kCFStringTokenizerUnitWord)
        let locale = CFLocaleCopyCurrent()
        let tokenizer = CFStringTokenizerCreate( kCFAllocatorDefault, self as CFString, inputRange, flag, locale)
        var tokenType = CFStringTokenizerAdvanceToNextToken(tokenizer)
        var tokens : [String] = []

        while tokenType != []
        {
            let currentTokenRange = CFStringTokenizerGetCurrentTokenRange(tokenizer)
            let substring = self.substringWithRange(aRange: currentTokenRange)
            tokens.append(substring)
            tokenType = CFStringTokenizerAdvanceToNextToken(tokenizer)
        }

        return tokens
    }

    func substringWithRange(aRange : CFRange) -> String {

        let nsrange = NSMakeRange(aRange.location, aRange.length)
        let substring = (self as NSString).substring(with: nsrange)
        return substring
    }
}

struct TextHighlightingExampleView : View {
    var body: some View {
        let sampleText = "English phrase: \"I’m still learning English, so please speak slowly.” This is a polite way to ask someone to slow down when they’re speaking English."
        return Text(sampleText, making: "English", .red)
                    .lineLimit(nil)
                    .navigationBarTitle(Text("Text Extension"))
    }
}

#if DEBUG
struct TextHighlightingExampleView_Previews : PreviewProvider {
    static var previews: some View {
        TextHighlightingExampleView()
    }
}
#endif


