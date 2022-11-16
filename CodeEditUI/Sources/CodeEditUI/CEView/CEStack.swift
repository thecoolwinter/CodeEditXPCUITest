//
//  CEVStack.swift
//  CodeEditXPCUITest
//
//  Created by Khan Winter on 11/12/22.
//

import Foundation
import SwiftUI

@objc(CEHStack)
public class CEHStack: NSObject, CEView {
    public static var supportsSecureCoding: Bool { true }

    public init(@CEViewBuilder _ view: () -> CETupleView) {
        self.view = view()
        super.init()
    }

    public func encode(with coder: NSCoder) {
        coder.encode(view, forKey: "view")
    }

    public required init?(coder: NSCoder) {
        guard
            let view = coder.decodeObject(of: CETupleView.self, forKey: "view")
        else {
            return nil
        }

        self.view = view
    }

    let view: CETupleView

    public var body: some View {
        HStack {
            view.body
        }
    }
}

@objc(CEVStack)
public class CEVStack: NSObject, CEView {
    public static var supportsSecureCoding: Bool { true }

    public init(@CEViewBuilder _ view: () -> CETupleView) {
        self.view = view()
        super.init()
    }

    public func encode(with coder: NSCoder) {
        coder.encode(view, forKey: "view")
    }

    public required init?(coder: NSCoder) {
        guard
            let view = coder.decodeObject(of: CETupleView.self, forKey: "view")
        else {
            return nil
        }

        self.view = view
    }

    let view: CETupleView

    public var body: some View {
        VStack {
            view.body
        }
    }
}

@objc(CEZStack)
public class CEZStack: NSObject, CEView {
    public static var supportsSecureCoding: Bool { true }

    public init(@CEViewBuilder _ view: () -> CETupleView) {
        self.view = view()
        super.init()
    }

    public func encode(with coder: NSCoder) {
        coder.encode(view, forKey: "view")
    }

    public required init?(coder: NSCoder) {
        guard
            let view = coder.decodeObject(of: CETupleView.self, forKey: "view")
        else {
            return nil
        }

        self.view = view
    }

    let view: CETupleView

    public var body: some View {
        ZStack {
            view.body
        }
    }
}
