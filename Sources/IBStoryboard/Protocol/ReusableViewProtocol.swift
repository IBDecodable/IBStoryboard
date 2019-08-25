//
//  ReusableViewProtocol.swift
//  IBStoryboard
//
//  Created by phimage on 25/08/2019.
//

#if os(macOS)
import AppKit
public typealias IBReusableView = NSView
#else
import UIKit
public typealias IBReusableView = UIView
#endif

public protocol ReusableViewProtocol: IdentifiableProtocol {
    var viewType: IBReusableView.Type? { get }
}

public func ==<T: ReusableViewProtocol, U: ReusableViewProtocol>(lhs: T, rhs: U) -> Bool {
    return lhs.storyboardIdentifier == rhs.storyboardIdentifier
}
