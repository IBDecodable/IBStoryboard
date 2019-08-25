//
//  Storyboard.swift
//  IBStoryboard
//
//  Created by phimage on 25/08/2019.
//

#if os(macOS)
import AppKit
typealias IBStoryboardIdentifier = NSStoryboard.Name
typealias IBStoryboardType = NSStoryboard
#else
import UIKit
typealias IBStoryboardIdentifier = String
typealias IBStoryboardType = UIStoryboard
#endif

/// Represent a storyboard.
protocol Storyboard {
    static var storyboard: IBStoryboardType { get }
    static var identifier: IBStoryboardIdentifier { get }
}
