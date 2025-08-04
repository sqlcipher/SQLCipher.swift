# SQLCipher.swift

SQLCipher.swift is based on [SQLCipher Core](https://github.com/sqlcipher/sqlcipher) and is the official Swift Package for SQLCipher maintained by [Zetetic, LLC](https://www.zetetic.net).

SQLCipher is a standalone fork of the [SQLite](https://www.sqlite.org/) database library that adds 256 bit AES encryption of database files and other security features like:

- on-the-fly encryption
- tamper detection
- memory sanitization
- strong key derivation

## Installation

**Xcode**

1. In Xcode go to File > Add Packages...
2. Enter the repository URL: `https://github.com/sqlcipher/sqlcipher-spm`
3. Choose your desired version or branch.

**Package Dependency**

1. Add the following to your `Package.swift` file:

```
dependencies: [
    .package(url: "https://github.com/sqlcipher/SQLCipher.swift.git", from: "4.10.0")
]
```
2. Build your project:

```
$ swift build
```

### Import SQLCipher

For Swift based projects, import the SQLCipher module using `import SQLCipher`

For Objective-C based projets, import the SQLCipher module using `#import <SQLCipher/SQLCipher.h>`

### Builds Settings

To enable SQLCipher encryption in your consuming project, you must set the `SQLITE_HAS_CODEC` Build Setting flag.

For Swift based projects, go to your project's Build Settings and search for Preprocessor Macros, enter `SQLITE_HAS_CODEC=1` for both Debug and Release Preprocessor Macros.

For Objective-C based projects, go to your project's Build Settings and search for Other C Flags, enter `-DSQITE_HAS_CODEC` for both Debug and Release Other C Flags.

## License

SQLCipher.swift is distributed under a BSD-style license, requiring attribution and reproduction of the license in applications and documentation. See the [the LICENSE file](https://github.com/sqlcipher/SQLCipher.swift/LICENSE.md) for more information.

## Support

The primary source for complete documentation (design, API, platforms, usage) is the SQLCipher website:

[https://www.zetetic.net/sqlcipher/sqlcipher-apple-community/#option-2-swift-package-manager-integration](https://www.zetetic.net/sqlcipher/sqlcipher-apple-community/#option-2-swift-package-manager-integration)

[https://www.zetetic.net/sqlcipher/documentation](https://www.zetetic.net/sqlcipher/documentation)

The primary avenue for support and discussions is the SQLCipher discuss site:

[https://discuss.zetetic.net/c/sqlcipher](https://discuss.zetetic.net/c/sqlcipher)

Issues or support questions on using SQLCipher should be entered into the GitHub Issue tracker:

[https://github.com/sqlcipher/SQLCipher.swift/issues](https://github.com/sqlcipher/SQLCipher.swift/issues)

Please DO NOT post issues, support questions, or other problems to blog posts about SQLCipher as we do not monitor them frequently.

If you are using SQLCipher in your own software please let us know at [support@zetetic.net](mailto:support@zetetic.net?Subject=Using%20SQLCipher%20Community)!

SQLCipher commercial libraries are [available for purchase](https://www.zetetic.net/sqlcipher/buy/) which have some signficant advantages:

* Easier to setup, saving many steps in project configuration
* Value Level Encryption
* Encrypted Virtual Tables
* Performance Counters & Statistics
* Private Priority Support from SQLCipher developers
