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
            VStack {
                Text("VStack here!")
                HStack {
                    Text("Hello World!")
                    Text("View 2")
                }
                Text("End of VStack")
            }
        }

        completion(sendable)
    }
}
