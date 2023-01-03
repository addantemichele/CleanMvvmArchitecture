//
//  HiddenableView.swift
//  CleanMvvmArchitecture
//
//  Created by michele addante on 03/01/23.
//

import SwiftUI

extension View {
    @ViewBuilder func isHidden(_ isHidden: Binding<Bool>) -> some View {
        if isHidden.wrappedValue {
            self.hidden()
        } else {
            self
        }
    }
}
