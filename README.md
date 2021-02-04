# PeacockCoreVideoSDKCodingChallenge
Simple IoC Container in Swift

Exposes an API where the primary concerns are:
Registration: The ability to register an implementation for a given type (sticking to just protocols is fine).
Resolution: The ability to, at a later stage (than registration), resolve a type; that is, to provide a method for getting a concrete instance of a desired type.
