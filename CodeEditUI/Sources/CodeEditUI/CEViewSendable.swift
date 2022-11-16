//
//  CodeEditUI.swift
//  CodeEditXPCUITest
//
//  Created by Khan Winter on 11/10/22.
//

import Foundation
import SwiftUI

@objc(CEViewSendable)
public class CEViewSendable: NSObject, NSSecureCoding {
    public static var supportsSecureCoding: Bool {
        get { true }
    }

    public init(@CEViewBuilder _ view: () -> any CEView) {
        self.id = UUID()
        self.view = view()
        super.init()
    }
    
    required public init?(coder: NSCoder) {
        guard
            let id = coder.decodeObject(of: NSString.self, forKey: "id"),
            let view = try? coder.decodeTopLevelObject(of: [CETupleView.self,
                                                             CEText.self,
                                                             CEHStack.self,
                                                             CEVStack.self,
                                                             CEZStack.self], forKey: "view") as? (any CEView)
        else {
            return nil
        }
        self.id = UUID(uuidString: id as String)!
        self.view = view
    }
    
    public func encode(with coder: NSCoder) {
        coder.encode(id.uuidString as NSString, forKey: "id")
        coder.encode(view, forKey: "view")
    }
    
    let id: UUID
    let view: any CEView
    
    @ViewBuilder
    public func makeView() -> some View {
        strongTypedView(view: view)
    }

}
