//
//  SegueKind.swift
//  IBStoryboard
//
//  Created by phimage on 25/08/2019.
//

/// Segue kind as seen in storyboard.
enum SegueKind: String, CustomStringConvertible {
    case relationship = "relationship"
    case show = "show"
    case presentation = "presentation"
    case embed = "embed"
    case unwind = "unwind"
    case push = "push"
    case modal = "modal"
    case popover = "popover"
    case replace = "replace"
    case custom = "custom"

    var description: String { return self.rawValue }
}
