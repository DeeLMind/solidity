contract C {
    struct S { bool f; }
    S s;
    function f() internal pure returns (S storage) {
        assembly {
        }
    }
}
// ----
// Warning: (87-88): This variable is of storage pointer type and might be returned without assignment.
