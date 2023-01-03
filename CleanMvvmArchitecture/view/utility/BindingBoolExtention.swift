//
//  BindingBoolExtention.swift
//  CleanMvvmArchitecture
//
//  Created by michele addante on 03/01/23.
//

import Foundation
import SwiftUI

extension Binding where Value == Bool {
    var not: Binding<Value> {
        Binding<Value>(
            get: { !self.wrappedValue },
            set: { self.wrappedValue = !$0 }
        )
    }
}
