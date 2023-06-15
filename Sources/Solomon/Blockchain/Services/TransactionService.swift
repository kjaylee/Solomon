//
//  TransactionService.swift
//  Solomon
//
//  Created by Jay Lee on 2023/06/13.
//

import Foundation

// TransactionService.swift
class TransactionService {
    func createTransaction(sender: String, receiver: String, amount: Double) -> Transaction {
        let transaction = Transaction(sender: sender, receiver: receiver, amount: amount)
        return transaction
    }
}
