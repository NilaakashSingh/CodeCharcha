import UIKit

// Key path: https://www.swiftbysundell.com/articles/the-power-of-key-paths-in-swift/

// Builder pattern: https://medium.com/@aainajain/builder-pattern-5a115ba3a56f

// In short, Builder pattern returns the object of the class after setting the required property(one or more)

// Implementation of the Builder pattern using KeyPath


protocol Builder {}

extension Builder {
    func set<T>(subject: T, referenceKeyPath: WritableKeyPath<Self, T>) -> Self {
        var strongSelf = self
        strongSelf[keyPath: referenceKeyPath] = subject
        return strongSelf
    }
}

extension UIView: Builder {}

let label = UILabel().set(subject: .red, referenceKeyPath: \.textColor).set(subject: "Swift", referenceKeyPath: \.text)


