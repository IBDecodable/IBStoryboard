//
//  SegueProtocol.swift
//  IBStoryboard
//
//  Created by phimage on 25/08/2019.
//

#if os(macOS)
import AppKit
public typealias IBStoryboardSegueIdentifier = NSStoryboardSegue.Identifier
#else
public typealias IBStoryboardSegueIdentifier = String
#endif

/// This protocol will help you to match and perform segue.
public protocol SegueProtocol {
    var identifier: IBStoryboardSegueIdentifier? { get }
}

public func ==<T: SegueProtocol, U: SegueProtocol>(lhs: T, rhs: U) -> Bool {
    return lhs.identifier == rhs.identifier
}

public func ~=<T: SegueProtocol, U: SegueProtocol>(lhs: T, rhs: U) -> Bool {
    return lhs.identifier == rhs.identifier
}

public func ==<T: SegueProtocol>(lhs: T, rhs: IBStoryboardSegueIdentifier) -> Bool {
    return lhs.identifier == rhs
}

public func ~=<T: SegueProtocol>(lhs: T, rhs: IBStoryboardSegueIdentifier) -> Bool {
    return lhs.identifier == rhs
}

public func ==<T: SegueProtocol>(lhs: IBStoryboardSegueIdentifier, rhs: T) -> Bool {
    return lhs == rhs.identifier
}

public func ~=<T: SegueProtocol>(lhs: IBStoryboardSegueIdentifier, rhs: T) -> Bool {
    return lhs == rhs.identifier
}
