# CodeEditUI

## How to add a view type
Add your view type in the `CEView` folder. Make sure that it conforms to both `NSObject` and `CEView`, and add an
`@objc(/* Your Type Name Here */)` to the top of your type.

> The last step there is important. It is not enough to simply add `@objc` to your class, or `NSSecureCoding` will not
> be able to decode your type

Make your class conform to the required types, and set `supportsSecureCoding` to true.

Implement your `encode(_ :)` and `init(coder:)` methods so your class can be encoded using `NSSecureCoding`.

Add your SwiftUI code that your view should be converted into in the CodeEdit app.

There are 3 places you'll need to modify when a view type is added:
- In `CEView.swift`, add a case for your view before the `EmptyView()` case on both instances of the `strongTypedView`
  methods
- In `CETupleView.swift` add your type to the list of decodable types in the `required public init?(coder: NSCoder)`
  method
- In `CEViewSendable.swift` add your type to the list of decodable types in the `required public init?(coder: NSCoder)`
  method
