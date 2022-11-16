//
//  TestUIServiceProtocol.swift
//  TestUIService
//
//  Created by Khan Winter on 11/10/22.
//

import Foundation
import CodeEditUI

/// The protocol that this service will vend as its API. This protocol will also need to be visible to the process hosting the service.
@objc protocol TestUIServiceProtocol {
    func getViewToDisplay(_ completion: @escaping (CEViewSendable) -> Void)
}
