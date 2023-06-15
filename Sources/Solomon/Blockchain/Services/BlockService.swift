//
//  BlockService.swift
//  Solomon
//
//  Created by Jay Lee on 2023/06/13.
//

import Foundation

class BlockService {
    var lastBlockIndex: Int = 0

    func createBlock(transactions: [Transaction], previousHash: String) -> Block {
        let timestamp = Date().timeIntervalSince1970
        lastBlockIndex += 1
        let block = Block(index: lastBlockIndex, timestamp: timestamp, transactions: transactions, previousHash: previousHash)
        return block
    }
}
