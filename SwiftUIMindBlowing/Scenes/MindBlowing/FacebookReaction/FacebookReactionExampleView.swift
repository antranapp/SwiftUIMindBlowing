//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct FacebookReactionExampleView : View {

    @State var dragOffset = CGSize.zero
    @State var selectedReaction: Int? = nil

    var reactions = [0, 1, 2, 3, 4]
    var reactionNames = ["love", "laugh", "wow", "sad", "angry"]
    var reactionSize: CGFloat = 64.0
    var reactionSpacing: CGFloat = 10.0

    var body: some View {
        VStack(alignment: .leading, spacing: reactionSpacing) {
            HStack(spacing: reactionSpacing) {
                ForEach(reactions) { reaction in
                    Image(self.reactionNames[reaction])
                        .resizable()
                        .frame(
                            width: (self.selectedReaction == reaction ? self.reactionSize * 2 : self.reactionSize),
                            height: (self.selectedReaction == reaction ? self.reactionSize * 2 : self.reactionSize)
                        )
                        .animation(.spring())
                        .offset(y: self.dragOffset == CGSize.zero ? self.reactionSize : self.selectedReaction == reaction ? (self.reactionSize * -1) : 0)
                        .opacity(self.dragOffset == CGSize.zero ? 0 : 1)
                }
            }
            .frame(width: ((self.reactionSize + self.reactionSpacing) * CGFloat(self.reactions.count) - self.reactionSpacing), height: 50)
            ZStack {
                Image("like")
                    .resizable()
                    .frame(width: reactionSize, height: reactionSize)
//                Circle()
//                    .opacity(self.dragOffset == CGSize.zero ? 0 : 1)
//                    .foregroundColor(.gray)
//                    .opacity(0.5)
//                    .frame(width: reactionSize, height: reactionSize)
//                    .offset(dragOffset)
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                self.dragOffset = value.translation
                                if value.translation.height < (self.reactionSize * -0.5) &&
                                    value.translation.height > (self.reactionSize * -2.5) {
                                    self.selectedReaction = Int(floor(value.translation.width / (self.reactionSize + self.reactionSpacing)))
                                }
                            }
                            .onEnded { value in
                                self.selectedReaction = nil
                                self.dragOffset = .zero
                        }
                    )
            }
        }
    }
}

#if DEBUG
struct FacebookReactionExampleView_Previews : PreviewProvider {
    static var previews: some View {
        FacebookReactionExampleView()
    }
}
#endif
