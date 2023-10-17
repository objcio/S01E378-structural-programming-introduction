//

import SwiftUI

struct ContentView: View {
    var book = Book(title: "Thinking in SwiftUI", published: .now)
    var body: some View {
        book.to.view
            .padding()
    }
}

#Preview {
    ContentView()
}
