contract C {
    struct S { bool f; }
    S s;
    function f() internal view returns (S storage c) {
        while(false) {
            c = s;
        }
    }
}
// ----
// Warning: (87-98): uninitialized storage pointer may be returned
