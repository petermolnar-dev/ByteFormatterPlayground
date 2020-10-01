//
//  Int+normaliseFromByte.swift
//  ByteFormatterPlayground
//
//  Created by Peter Molnar on 01/10/2020.
//  Copyright © 2020 Peter Molnar. All rights reserved.
//

import Foundation

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
