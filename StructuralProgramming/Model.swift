//

import Foundation

struct Book {
    var title: String
    var published: Date

    typealias Structure = Struct<List<Property<String>, List<Property<Date>, Empty>>>

    var to: Structure {
        .init(name: "Book", properties: .init(head: .init(name: "title", value: title), tail: .init(head: .init(name: "published", value: published), tail: .init())))
    }

    static func from(_ s: Structure) -> Self {
        .init(title: s.properties.head.value, published: s.properties.tail.head.value)
    }
}
