//
//  Blockchain.swift
//  Solomon
//
//  Created by Jay Lee on 2023/06/13.
//

import Foundation

// Blockchain.swift
class Blockchain {
    var blocks: [Block] = []

    func addBlock(_ block: Block) {
        blocks.append(block)
    }
}
