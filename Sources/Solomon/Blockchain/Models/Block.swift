//
//  Block.swift
//  Solomon
//
//  Created by Jay Lee on 2023/06/13.
//

import Foundation
import CryptoKit

struct Block {
    let index: Int
    let timestamp: Double
    let transactions: [Transaction]
    let previousHash: String
    var hash: String {
        let blockContents = "\(index)\(timestamp)\(transactions)\(previousHash)"
        let hash = SHA256.hash(data: Data(blockContents.utf8))
        return hash.compactMap { String(format: "%02x", $0) }.joined()
    }
}
