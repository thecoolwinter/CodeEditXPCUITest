//
//  CEView.swift
//  CodeEditXPCUITest
//
//  Created by Khan Winter on 11/12/22.
//

import Foundation
import SwiftUI

protocol CEView: NSObject, NSSecureCoding {
    static var supportsSecureCoding: Bool { get }

    associatedtype Body: View
    var body: Body { get }
}

extension CEView {
    @ViewBuilder
    func strongTypedView(view: any CEView) -> some View {
        if let view = view as? CEText {
            view.body
        } else {
            EmptyView()
        }
    }
}
