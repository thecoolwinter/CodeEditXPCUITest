//
//  CEText.swift
//  CodeEditXPCUITest
//
//  Created by Khan Winter on 11/12/22.
//

import Foundation
import SwiftUI

@objc(CEText)
class CEText: NSObject, CEView {
    static var supportsSecureCoding: Bool = true

    init(_ text: String) {
        self.text = text
        super.init()
    }

    func encode(with coder: NSCoder) {
        coder.encode(text as NSString, forKey: "text")
    }

    required init?(coder: NSCoder) {
        guard
            let text = coder.decodeObject(of: NSString.self, forKey: "text")
        else {
            return nil
        }

        self.text = text as String
    }

    let text: String

    var body: SwiftUI.Text {
        SwiftUI.Text(text)
    }
}
