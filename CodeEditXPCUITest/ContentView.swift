//
//  ContentView.swift
//  CodeEditXPCUITest
//
//  Created by Khan Winter on 11/10/22.
//

import SwiftUI
import CodeEditUI

struct ContentView: View {
    @State var connectionToService: NSXPCConnection? = nil
    @State var viewSendable: CEViewSendable? = nil

    @ViewBuilder
    func buildView() -> some View {
        if let viewSendable = viewSendable {
            viewSendable.makeView()
        } else {
            Text("Loading...")
        }
    }

    var body: some View {
        VStack {
            Button("Refresh") {
                refreshExtensionView()
            }
            buildView()
        }
        .frame(minWidth: 300, idealWidth: 1000, maxWidth: nil,
               minHeight: 300, idealHeight: 1000, maxHeight: nil)
        .padding()
        .onAppear {
            connectionToService = NSXPCConnection(serviceName: "com.WindChillMedia.TestUIService")
            connectionToService?.remoteObjectInterface = NSXPCInterface(with: TestUIServiceProtocol.self)
            connectionToService?.resume()
            refreshExtensionView()
        }
    }

    func errorHandler(_ error: Error) {

    }

    func refreshExtensionView() {
        guard connectionToService != nil else { return }
        viewSendable = nil

        var info = mach_timebase_info()
        guard mach_timebase_info(&info) == KERN_SUCCESS else { return }
        let start = mach_absolute_time()

        if let xpcProxy = connectionToService?.remoteObjectProxyWithErrorHandler(errorHandler(_:)) as? TestUIServiceProtocol {
            xpcProxy.getViewToDisplay { sentView in
                let end = mach_absolute_time()

                let elapsed = end - start
                let nanos = elapsed * UInt64(info.numer) / UInt64(info.denom)
                print("\(TimeInterval(nanos) / TimeInterval(NSEC_PER_MSEC))ms")

                viewSendable = sentView
            }
        } else {
            print("Uh Oh")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
