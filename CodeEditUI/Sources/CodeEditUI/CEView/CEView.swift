//
//  CEView.swift
//  CodeEditXPCUITest
//
//  Created by Khan Winter on 11/12/22.
//

import Foundation
import SwiftUI

public protocol CEView: NSObject, NSSecureCoding, Identifiable {
    static var supportsSecureCoding: Bool { get }

    associatedtype Body: View
    var body: Body { get }
}

extension CEView {
    @ViewBuilder
    func strongTypedView(view: any CEView) -> some View {
        if view is CEText {
            (view as! CEText).body
        } else if view is CETupleView {
            (view as? CETupleView)?.body
        } else if view is CEHStack {
            (view as! CEHStack).body
        } else if view is CEVStack {
            (view as! CEVStack).body
        } else if view is CEZStack {
            (view as! CEZStack).body
        } else {
            EmptyView()
        }
    }
}

extension CEViewSendable {
    @ViewBuilder
    func strongTypedView(view: any CEView) -> some View {
        if view is CEText {
            (view as! CEText).body
        } else if view is CETupleView {
            (view as? CETupleView)?.body
        } else if view is CEHStack {
            (view as! CEHStack).body
        } else if view is CEVStack {
            (view as! CEVStack).body
        } else if view is CEZStack {
            (view as! CEZStack).body
        } else {
            EmptyView()
        }
    }
}
