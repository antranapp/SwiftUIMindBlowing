//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct SequenceGestureExampleDemoView: View {

    enum DragState {
        case inactive
        case pressing
        case dragging(translation: CGSize)

        var translation: CGSize {
            switch self {
                case .inactive, .pressing:
                    return .zero
                case .dragging(let translation):
                    return translation
            }
        }

        var isActive: Bool {
            switch self {
                case .inactive:
                    return false
                case .pressing, .dragging:
                    return true
            }
        }

        var isDragging: Bool {
            switch self {
                case .inactive, .pressing:
                    return false
                case .dragging:
                    return true
            }
        }
    }

    @GestureState var dragState = DragState.inactive
    @State var viewState = CGSize.zero

    var body: some View {
        let minimumLongPressDuration = 0.5
        let longPressDrag = LongPressGesture(minimumDuration: minimumLongPressDuration)
            .sequenced(before: DragGesture())
            .updating($dragState) { value, state, transaction in
                switch value {
                    // Long press begins.
                    case .first(true):
                        state = .pressing
                    // Long press confirmed, dragging may begin.
                    case .second(true, let drag):
                        state = .dragging(translation: drag?.translation ?? .zero)
                    // Dragging ended or the long press cancelled.
                    default:
                        state = .inactive
                }
        }
        .onEnded { value in
            guard case .second(true, let drag?) = value else { return }
            self.viewState.width += drag.translation.width
            self.viewState.height += drag.translation.height
        }

        return Circle()
            .fill(Color.blue)
            .overlay(dragState.isDragging ? Circle().stroke(Color.white, lineWidth: 2) : nil)
            .frame(width: 100, height: 100, alignment: .center)
            .offset(
                x: viewState.width + dragState.translation.width,
                y: viewState.height + dragState.translation.height
            )
            .animation(nil)
            .shadow(radius: dragState.isActive ? 8 : 0)
            .animation(.easeIn(duration: minimumLongPressDuration))
            .gesture(longPressDrag)
    }
}
