import Foundation

struct Struct<Properties> {
    var name: String
    var properties: Properties
}

struct Property<Value> {
    var name: String
    var value: Value
}

struct List<Head, Tail> {
    var head: Head
    var tail: Tail
}

struct Empty { }
