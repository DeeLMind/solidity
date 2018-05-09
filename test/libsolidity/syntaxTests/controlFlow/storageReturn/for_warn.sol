contract C {
    struct S { bool f; }
    S s;
    function f() internal view returns (S storage c) {
        for(;; c = s) {
        }
    }
    function g() internal view returns (S storage c) {
        for(;;) {
            c = s;
        }
    }
}
// ----
// Warning: (87-98): uninitialized storage pointer may be returned
// Warning: (182-193): uninitialized storage pointer may be returned
