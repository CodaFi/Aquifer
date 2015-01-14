//
//  X.swift
//  Aquifer
//
//  Created by Alexander Ronald Altman on 1/14/15.
//  Copyright (c) 2015 TypeLift. All rights reserved.
//

import Foundation
import Swiftz

public struct X {
    internal let rec: () -> X

    internal init(_ r: @autoclosure () -> X) {
        rec = r
    }

    public func absurd<A>() -> A {
        return rec().absurd()
    }
}