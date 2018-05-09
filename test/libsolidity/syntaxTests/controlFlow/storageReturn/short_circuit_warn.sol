contract C {
    struct S { bool f; }
    S s;
    function f() internal view returns (S storage c) {
        false && (c = s).f;
    }
    function g() internal view returns (S storage c) {
        true || (c = s).f;
    }
    function h() internal view returns (S storage c) {
        // expect warning, although this is always fine
        true && (false || (c = s).f);
    }
}
// ----
// Warning: (87-98): uninitialized storage pointer may be returned
// Warning: (176-187): uninitialized storage pointer may be returned
// Warning: (264-275): uninitialized storage pointer may be returned
