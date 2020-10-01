//
//  ByteFormatterTests.swift
//  ByteFormatterPlaygroundTests
//
//  Created by Peter Molnar on 01/10/2020.
//  Copyright © 2020 Peter Molnar. All rights reserved.
//

import XCTest
@testable import ByteFormatterPlayground

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
