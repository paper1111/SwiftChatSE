//
//  TerminalOutputDelegate.swift
//  SwiftChatSE
//
//  Created by paper1111 on 1/7/2018.
//

public protocol TerminalOutputDelegate {
    func receiveMessage(_ items: Any..., separator: String, terminator: String)
}
