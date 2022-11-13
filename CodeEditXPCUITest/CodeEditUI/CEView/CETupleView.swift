//
//  CETupleView.swift
//  CodeEditXPCUITest
//
//  Created by Khan Winter on 11/12/22.
//

import Foundation
import SwiftUI

@objc(CETupleView)
class CETupleView: NSObject, CEView {
    static var supportsSecureCoding: Bool = true

    func encode(with coder: NSCoder) {
        coder.encode(views, forKey: "views")
    }

    required init?(coder: NSCoder) {
        guard
            let views = try? coder.decodeTopLevelObject(of: [NSArray.self, CEText.self], forKey: "views") as? [any CEView]
        else {
            return nil
        }

        self.views = views
    }

    let views: [any CEView]

    var body: some View {
        // SwiftUI has a maximum of 10 child views per view. So we can hardcode this limit.
        // This type of hard limit can be imposed on other "grouping" views like `Stack`s and `ScrollView`s.
        ForEach(0..<10) { i in
            if self.views.count > i {
                self.strongTypedView(view: self.views[i])
            }
        }
    }

    // MARK: - Initializers

    init(views: some CEView) {
        self.views = [views]
        super.init()
    }

    init(views: (some CEView, some CEView)) {
        self.views = [views.0, views.1]
        super.init()
    }

    init(views: (some CEView, some CEView, some CEView)) {
        self.views = [views.0, views.1, views.2]
        super.init()
    }

    init(views: (some CEView, some CEView, some CEView, some CEView)) {
        self.views = [views.0, views.1, views.2, views.3]
        super.init()
    }

    init(views: (some CEView, some CEView, some CEView, some CEView, some CEView)) {
        self.views = [views.0, views.1, views.2, views.3, views.4]
        super.init()
    }

    init(views: (some CEView, some CEView, some CEView, some CEView, some CEView, some CEView)) {
        self.views = [views.0, views.1, views.2, views.3, views.4, views.5]
        super.init()
    }

    init(views: (some CEView, some CEView, some CEView, some CEView, some CEView, some CEView, some CEView)) {
        self.views = [views.0, views.1, views.2, views.3, views.4, views.5, views.6]
        super.init()
    }

    init(views: (some CEView,
                 some CEView,
                 some CEView,
                 some CEView,
                 some CEView,
                 some CEView,
                 some CEView,
                 some CEView)) {
        self.views = [views.0, views.1, views.2, views.3, views.4, views.5, views.6, views.7]
        super.init()
    }

    init(views: (some CEView,
                 some CEView,
                 some CEView,
                 some CEView,
                 some CEView,
                 some CEView,
                 some CEView,
                 some CEView,
                 some CEView)) {
        self.views = [views.0, views.1, views.2, views.3, views.4, views.5, views.6, views.7, views.8]
        super.init()
    }

    init(views: (some CEView,
                 some CEView,
                 some CEView,
                 some CEView,
                 some CEView,
                 some CEView,
                 some CEView,
                 some CEView,
                 some CEView,
                 some CEView)) {
        self.views = [views.0, views.1, views.2, views.3, views.4, views.5, views.6, views.7, views.8, views.9]
        super.init()
    }
}
