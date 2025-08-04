import Testing
@testable import SQLCipher

@Test func testSQLCipher() async throws {
    var rc: Int32
    var db: OpaquePointer? = nil
    var stmt: OpaquePointer? = nil
    let correctPassword: String = "correct horse battery staple"
    rc = sqlite3_open(":memory:", &db)
    try #require(rc == SQLITE_OK, "Error opening database: \(String(cString: sqlite3_errmsg(db)))")
    
    rc = sqlite3_key(db, correctPassword, Int32(correctPassword.utf8CString.count))
    try #require(rc == SQLITE_OK, "Error setting key \(String(cString: sqlite3_errmsg(db)))")
    
    rc = sqlite3_prepare(db, "PRAGMA cipher_version;", -1, &stmt, nil)
    try #require(rc == SQLITE_OK, "Error preparing cipher_version stmt \(String(cString: sqlite3_errmsg(db)))")
    rc = sqlite3_step(stmt)
    try #require(rc == SQLITE_ROW, "Not SQLCipher")
    if let cipherVersion = sqlite3_column_text(stmt, 0) {
        print("cipher_version: \(String(cString: cipherVersion))")
    }
    sqlite3_finalize(stmt)
    sqlite3_close(db)
}
