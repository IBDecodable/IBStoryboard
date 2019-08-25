//
//  ReusableKind.swift
//  IBStoryboard
//
//  Created by phimage on 25/08/2019.
//

/// Object with an reusable identifier ie. table and collection view cells.
enum ReusableKind: String, CustomStringConvertible {
    case tableViewCell = "tableViewCell"
    case collectionViewCell = "collectionViewCell"

    var description: String { return self.rawValue }
}
