//
//  CommissionEmployee.swift
//  
//
//  Created by Jason  Brooks on 11/19/15.
//
//

import Foundation


public class CommissionEmployee {
    public var name: String!
    public var grossSales: NSDecimalNumber!
    public var commissionRate: NSDecimalNumber!
    
    // failable initializer
    public init?(name: String, grossSales : NSDecimalNumber,
            commissionRate: NSDecimalNumber) {
            
            // if any arguments are invalid return nil
            if name.isEmpty ||
                (grossSales.compare(NSDecimalNumber.zero()) ==
                    NSComparisonResult.OrderAscending) ||
                (commissionRate.compare(NSDecimalNumber.zero()) ==
                    NSComparisonResult.OrderAscending) {
                        
                return nil // an initializer argument was invalid
                        
                }
                
                self.name = name
                self.grossSales = grossSales
                self.commissionRate = commissionRate
                
    }
    
    // earning computed property
    public var description: String {
        return String(format: "%@: %@\n%@: %@: %@\n%@: %@",
            "Commission Employee", name,
            "gross Sales", formatAsCurrency(grossSales),
            "Commission Rate", formatAsPercent(commissionRate))
    }
}