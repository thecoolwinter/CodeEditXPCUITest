//
//  CEVStack.swift
//  CodeEditXPCUITest
//
//  Created by Khan Winter on 11/12/22.
//

import Foundation
import SwiftUI

@objc(CEHStack)
class CEHStack: NSObject, CEView {
    static var supportsSecureCoding: Bool = true

    init(@CEViewBuilder _ view: () -> CETupleView) {
        self.view = view()
        super.init()
    }

    func encode(with coder: NSCoder) {
        coder.encode(view, forKey: "view")
    }

    required init?(coder: NSCoder) {
        guard
            let view = coder.decodeObject(of: CETupleView.self, forKey: "view")
        else {
            return nil
        }

        self.view = view
    }

    let id: UUID = UUID()
    let view: CETupleView

    var body: some View {
        SwiftUI.HStack {
            view.body
        }
    }
}

@objc(CEVStack)
class CEVStack: NSObject, CEView {
    static var supportsSecureCoding: Bool = true

    init(@CEViewBuilder _ view: () -> CETupleView) {
        self.view = view()
        super.init()
    }

    func encode(with coder: NSCoder) {
        coder.encode(view, forKey: "view")
    }

    required init?(coder: NSCoder) {
        guard
            let view = coder.decodeObject(of: CETupleView.self, forKey: "view")
        else {
            return nil
        }

        self.view = view
    }

    let id: UUID = UUID()
    let view: CETupleView

    var body: some View {
        SwiftUI.VStack {
            view.body
        }
    }
}

@objc(CEZStack)
class CEZStack: NSObject, CEView {
    static var supportsSecureCoding: Bool = true

    init(@CEViewBuilder _ view: () -> CETupleView) {
        self.view = view()
        super.init()
    }

    func encode(with coder: NSCoder) {
        coder.encode(view, forKey: "view")
    }

    required init?(coder: NSCoder) {
        guard
            let view = coder.decodeObject(of: CETupleView.self, forKey: "view")
        else {
            return nil
        }

        self.view = view
    }

    let id: UUID = UUID()
    let view: CETupleView

    var body: some View {
        SwiftUI.ZStack {
            view.body
        }
    }
}
