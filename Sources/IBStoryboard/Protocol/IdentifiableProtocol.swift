//
//  IdentifiableProtocol.swift
//  IBStoryboard
//
//  Created by phimage on 25/08/2019.
//

#if os(macOS)
import AppKit
#else
import UIKit
#endif

#if os(macOS)
public typealias IBStoryboardSceneIdentifier = NSStoryboard.SceneIdentifier
#else
public typealias IBStoryboardSceneIdentifier = String
#endif

public protocol IdentifiableProtocol: Equatable {
    var storyboardIdentifier: IBStoryboardSceneIdentifier? { get }
}
