//

import Foundation
import SwiftUI

protocol ToView {
    associatedtype V: View
    @ViewBuilder var view: V { get }
}

extension Empty: ToView {
    var view: some View {
        EmptyView()
    }
}

extension Property: ToView where Value: ToView {
    var view: some View {
        LabeledContent(name) {
            value.view
        }
    }
}

extension List: ToView where Head: ToView, Tail: ToView {
    var view: some View {
        head.view
        tail.view
    }
}

extension Struct: ToView where Properties: ToView {
    var view: some View {
        VStack {
            Text(name).bold()
            properties.view
        }
    }
}

// primitive types

extension String: ToView {
    var view: some View {
        Text(self)
    }
}

extension Date: ToView {
    var view: some View {
        Text(self, format: .dateTime)
    }
}
