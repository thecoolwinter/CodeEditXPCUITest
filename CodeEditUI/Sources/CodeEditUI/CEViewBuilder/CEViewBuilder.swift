//
//  CEViewBuilder.swift
//  CodeEditXPCUITest
//
//  Created by Khan Winter on 11/12/22.
//

import Foundation

@resultBuilder
public struct CEViewBuilder {
    public static func buildBlock<Content>(_ content: Content) -> CETupleView where Content: CEView {
        return CETupleView(views: content)
    }

    public static func buildBlock<C0, C1>(_ c0: C0, _ c1: C1) -> CETupleView where C0: CEView, C1: CEView {
        return CETupleView(views: (c0, c1))
    }

    public static func buildBlock<C0, C1, C2>(_ c0: C0, _ c1: C1, _ c2: C2) -> CETupleView where C0: CEView, C1: CEView , C2: CEView {
        return CETupleView(views: (c0, c1, c2))
    }

    public static func buildBlock<C0, C1, C2, C3>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3) -> CETupleView where C0: CEView, C1: CEView , C2: CEView, C3: CEView {
        return CETupleView(views: (c0, c1, c2, c3))
    }

    public static func buildBlock<C0, C1, C2, C3, C4>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, c4: C4) -> CETupleView where C0: CEView, C1: CEView, C2: CEView, C3: CEView, C4: CEView {
        return CETupleView(views: (c0, c1, c2, c3, c4))
    }

    public static func buildBlock<C0, C1, C2, C3, C4, C5>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, c4: C4, _ c5: C5) -> CETupleView where C0: CEView, C1: CEView, C2: CEView, C3: CEView, C4: CEView, C5: CEView {
        return CETupleView(views: (c0, c1, c2, c3, c4, c5))
    }

    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, c4: C4, _ c5: C5, _ c6: C6) -> CETupleView where C0: CEView, C1: CEView, C2: CEView, C3: CEView, C4: CEView, C5: CEView, C6: CEView {
        return CETupleView(views: (c0, c1, c2, c3, c4, c5, c6))
    }

    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, c4: C4, _ c5: C5, _ c6: C6, _ c7: C7) -> CETupleView where C0: CEView, C1: CEView, C2: CEView, C3: CEView, C4: CEView, C5: CEView, C6: CEView, C7: CEView {
        return CETupleView(views: (c0, c1, c2, c3, c4, c5, c6, c7))
    }

    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8) -> CETupleView where C0: CEView, C1: CEView, C2: CEView, C3: CEView, C4: CEView, C5: CEView, C6: CEView, C7: CEView, C8: CEView {
        return CETupleView(views: (c0, c1, c2, c3, c4, c5, c6, c7, c8))
    }

    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8, C9>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8, _ c9: C9) -> CETupleView where C0: CEView, C1: CEView, C2: CEView, C3: CEView, C4: CEView, C5: CEView, C6: CEView, C7: CEView, C8: CEView, C9: CEView {
        return CETupleView(views: (c0, c1, c2, c3, c4, c5, c6, c7, c8, c9))
    }

    public static func buildEither(first component: some CEView) -> some CEView {
        return component
    }

    public static func buildEither(second component: some CEView) -> some CEView {
        return component
    }

    public static func buildLimitedAvailability(_ component: some CEView) -> some CEView {
        return component
    }

    public static func buildOptional(_ component: (some CEView)?) -> any CEView {
        if component != nil {
            return component!
        } else {
            return CEEmptyView()
        }
    }
}
