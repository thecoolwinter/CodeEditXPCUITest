//
//  CEText.swift
//  CodeEditXPCUITest
//
//  Created by Khan Winter on 11/12/22.
//

import Foundation
import SwiftUI

@objc(CEText)
public class CEText: NSObject, CEView {
    public static var supportsSecureCoding: Bool { true }

    public init(_ text: String) {
        self.text = text
        super.init()
    }

    public func encode(with coder: NSCoder) {
        coder.encode(text as NSString, forKey: "text")
    }

    public required init?(coder: NSCoder) {
        guard
            let text = coder.decodeObject(of: NSString.self, forKey: "text")
        else {
            return nil
        }
        self.text = text as String
    }

    let text: String

    public var body: SwiftUI.Text {
        Text(text)
    }
}
