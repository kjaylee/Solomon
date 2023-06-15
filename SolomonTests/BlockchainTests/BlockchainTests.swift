//
//  BlockchainTests.swift
//  SolomonTests
//
//  Created by Jay Lee on 2023/06/15.
//

// BlockchainTests.swift
import XCTest
@testable import Solomon

final class BlockchainTests: XCTestCase {
    var blockchain: Blockchain!
    var blockService: BlockService!
    var transactionService: TransactionService!

    override func setUp() {
        super.setUp()
        blockchain = Blockchain()
        blockService = BlockService()
        transactionService = TransactionService()
    }

    func testAddBlock() {
        let transaction = transactionService.createTransaction(sender: "Alice", receiver: "Bob", amount: 10)
        let block = blockService.createBlock(transactions: [transaction], previousHash: "0")
        blockchain.addBlock(block)
        XCTAssert(blockchain.blocks.count == 1, "Block was not added correctly")
    }
}
