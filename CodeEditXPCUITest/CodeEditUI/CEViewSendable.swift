//
//  CodeEditUI.swift
//  CodeEditXPCUITest
//
//  Created by Khan Winter on 11/10/22.
//

import Foundation
import SwiftUI

@objc(CEViewSendable)
class CEViewSendable: NSObject, NSSecureCoding {
    static var supportsSecureCoding: Bool {
        get { true }
    }

    init(@CEViewBuilder _ view: () -> CETupleView) {
        self.id = UUID()
        self.view = view()
        super.init()
    }
    
    required init?(coder: NSCoder) {
        guard
            let id = coder.decodeObject(of: NSString.self, forKey: "id"),
            let view = coder.decodeObject(of: CETupleView.self, forKey: "view")
        else {
            return nil
        }
        self.id = UUID(uuidString: id as String)!
        self.view = view
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(id.uuidString as NSString, forKey: "id")
        coder.encode(view, forKey: "view")
    }
    
    let id: UUID
    let view: CETupleView
    
    @ViewBuilder
    func makeView() -> some View {
        view.body
    }

}
