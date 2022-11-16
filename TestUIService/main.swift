//
//  main.swift
//  TestUIService
//
//  Created by Khan Winter on 11/10/22.
//

import Foundation
import CodeEditUI

// Typealiases

typealias Text = CEText
typealias HStack = CEHStack
typealias VStack = CEVStack
typealias ZStack = CEZStack

// Service Delegate

class ServiceDelegate: NSObject, NSXPCListenerDelegate {
    
    /// This method is where the NSXPCListener configures, accepts, and resumes a new incoming NSXPCConnection.
    func listener(_ listener: NSXPCListener, shouldAcceptNewConnection newConnection: NSXPCConnection) -> Bool {
        newConnection.exportedInterface = NSXPCInterface(with: TestUIServiceProtocol.self)

        let exportedObject = TestUIService()
        newConnection.exportedObject = exportedObject
        newConnection.resume()

        return true
    }
}

// Create the delegate for the service.

let delegate = ServiceDelegate()
let listener = NSXPCListener.service()
listener.delegate = delegate
listener.resume()
