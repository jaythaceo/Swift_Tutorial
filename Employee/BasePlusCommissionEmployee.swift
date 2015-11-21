//
//  BasePlusCommissionEmployee.swift
//
//
//  Created by Jason  Brooks on 11/19/15.
//
//

import Foundation


public class BasePlusCommissionEmployee : CommissionEmployee {
    public var baseSalary: NSDecimalNumber!
    
    // failable initializer
    public init?(name: String, grossSales: NSDecimalNumber,
        commissionRate: NSDecimalNumber, baseSalary: NSDecimalNumber)
    {
        super . init(name: name, grossSales: grossSales,
            commissionRate: commissionRate)
        
        // validate baseSalary
        if baseSalary.compare(NSDecimalNumber.zero()) ==
            NSCompareResult.OrderedAcending {
                return nil // baseSalary was invalid so fail 
                
        }
        
        self.baseSalary = baseSalary
        
    }
    
    public override var earnings: NSDecimalNumber {
        return baseSalary.decimalNumberByAdding(super.earnings)
    }
    
    // description compute property
    public override var description: String {
        return String(format: "%@ %@\n%@",
            "Base-Salaried", super.description, "Base Salary",
            formatAsCurrency(baseSalary))
    }
}