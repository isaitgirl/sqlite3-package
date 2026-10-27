// SPDX-FileCopyrightText: 2026 Matthew Fennell <matthew@fennell.dev>
//
// SPDX-License-Identifier: blessing

// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CSQLite+MonalTraits",
    products: [
        .library(
            name: "CSQLite+MonalTraits",
            targets: ["CSQLite+MonalTraits"],
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sbooth/CSQLite.git",
            branch: "main",
            traits: [
                "DEFAULT_MEMSTATUS_0",
                "DEFAULT_WAL_SYNCHRONOUS_1",
                "DQS_0",
                //isaCloud: full-text search (FTS5) for the search in messages; the list is explicit, so the FTS5 that CSQLite enables by default was off
                "ENABLE_FTS5",
                "LIKE_DOESNT_MATCH_BLOBS",
                "MAX_EXPR_DEPTH_0",
                "OMIT_DECLTYPE",
                "OMIT_DEPRECATED",
                "OMIT_PROGRESS_CALLBACK",
                "THREADSAFE_1",
                "USE_ALLOCA",
            ],
        ),
    ],
    targets: [
        .target(
            name: "CSQLite+MonalTraits",
            dependencies: ["CSQLite"],
        ),
    ],
    swiftLanguageModes: [.v6],
)
