//
//  CEEmptyView.swift
//  CodeEditXPCUITest
//
//  Created by Khan Winter on 11/14/22.
//

import Foundation
import SwiftUI

@objc(CEEmptyView)
public class CEEmptyView: NSObject, CEView {
    public static var supportsSecureCoding: Bool { true }

    public override init() {
        super.init()
    }

    public required init?(coder: NSCoder) { }
    public func encode(with coder: NSCoder) { }

    public var body: EmptyView {
        EmptyView()
    }
}
