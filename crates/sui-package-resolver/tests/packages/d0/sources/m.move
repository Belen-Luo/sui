// Copyright (c) Mysten Labs, Inc.
// SPDX-License-Identifier: Apache-2.0

#[allow(unused_field)]
module d::m {
    use sui::object::UID;

    public struct O<T, phantom U> has key, store {
        id: UID,
        xs: vector<T>,
    }


    public struct T<U, V> has copy, drop, store {
        u: U,
        v: V,
    }

    public struct P has key { id: UID }
    public struct Q { x: u32 }
    public struct R has copy, drop { x: u16 }
    public struct S has drop, store { x: u8 }
}
