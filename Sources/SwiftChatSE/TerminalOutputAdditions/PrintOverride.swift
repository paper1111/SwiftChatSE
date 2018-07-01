//
//  PrintOverride.swift
//  SwiftChatSE
//
//  Created by paper1111 on 1/7/2018.
//

public var useDefaultPrint = true
public var terminalOutputDelegate: TerminalOutputDelegate? = nil

// IMPORTANT: SHADOWS SWIFT'S PRINT
internal func print(_ items: Any..., separator: String = " ", terminator: String = "\n") {
    if useDefaultPrint {
        Swift.print(items, separator: separator, terminator: terminator)
    } else {
        guard let delegate = terminalOutputDelegate else {
            fatalError("Must set a TerminalOutputDelegate when not using default print!")
        }
        delegate.receiveMessage(items, separator: separator, terminator: terminator)
    }
}
