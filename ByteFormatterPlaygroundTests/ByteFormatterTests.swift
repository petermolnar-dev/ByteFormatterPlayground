//
//  ByteFormatterTests.swift
//  ByteFormatterPlaygroundTests
//
//  Created by Peter Molnar on 01/10/2020.
//  Copyright © 2020 Peter Molnar. All rights reserved.
//

import XCTest
@testable import ByteFormatterPlayground

extension Int {
    
    /// Giving back a normalised  value and the measuremen unit from the Int amount, assuming that the amount is represented is byte.
    /// Normalisation is done with 2 decimals.
    /// Examlpes:
    ///
    /// Self value = 1163919, normaliseFromByte() -> "1.11 MB"
    /// Self value = 1, normaliseFromByte() -> "1.00 byte"
    /// Self.value = 1024 , normaliseFromByte() -> "1.00 KB"
    /// Selv.value = 1610612736, normaliseFromByte() -> "1.50 GB"
    public func normaliseFromByte() -> String {
        let formatter = ByteCountFormatter()
        formatter.countStyle = .binary
        formatter.allowsNonnumericFormatting = false
        formatter.isAdaptive = false
        formatter.zeroPadsFractionDigits = true
        
        return formatter.string(fromByteCount: Int64(self))
    }
}



class ByteFormatterTests: XCTestCase {

  func testConversion() {
           var testNumber = 0
           XCTAssert(testNumber.normaliseFromByte() == "0 bytes", "Nomalisation of 0 byte failed")
           
           testNumber = 1
           XCTAssert(testNumber.normaliseFromByte() == "1 byte", "Nomalisation of 1 byte failed")
           
           testNumber = 2
           XCTAssert(testNumber.normaliseFromByte() == "2 bytes", "Nomalisation of 2 bytes failed")
           
           testNumber = 300
           XCTAssert(testNumber.normaliseFromByte() == "300 bytes", "Nomalisation of 300 bytes failed")
           
           testNumber = 1024
           XCTAssert(testNumber.normaliseFromByte() == "1.00 KB", "Nomalisation of 1 KB failed")
           
           testNumber = 1163919
           XCTAssert(testNumber.normaliseFromByte() == "1.11 MB", "Nomalisation of 1.1 MB failed")
           
           testNumber = 1610612736
           XCTAssert(testNumber.normaliseFromByte() == "1.50 GB", "Nomalisation of 1.1 MB failed")
           
       }
}
