//
//  TestUIService.swift
//  TestUIService
//
//  Created by Khan Winter on 11/10/22.
//

import Foundation

class TestUIService: NSObject, TestUIServiceProtocol {
    @objc func getViewToDisplay(_ completion: @escaping (CEViewSendable) -> Void) {
        let sendable = CEViewSendable {
            Text("Hello World!")
            Text("View 2")
        }

        completion(sendable)
    }
}
