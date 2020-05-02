import std.stdio, std.algorithm, std.conv, std.array, std.string, std.math, std.typecons, std.numeric;

void main()
{
    auto N = readln.chomp.to!int;
    auto ps = readln.split.to!(int[]);

    auto ls = new int[](N);
    auto rs = new int[](N);
    size_t i;
    foreach (j, p; ps) {
        if (j != 0 && p < ps[j-1]) {
            auto d = j.to!int - i.to!int-1;
            foreach (k; i..j) ls[k] = d--;
            i = j;
        }
    }
    if (i != N-1) {
        auto d = N - 1 - i.to!int;
        foreach (k; i..N-1) ls[k] = d--;
    }
    i = N-1;
    foreach_reverse (j, p; ps) {
        if (j != N-1 && p < ps[j+1]) {
            auto d = i.to!int - j.to!int-1;
            foreach_reverse (k; j..i) rs[k] = d--;
            i = j;
        }
    }
    if (i != 0) {
        auto d = i.to!int;
        foreach_reverse (k; 0..i) rs[k] = d--;
    }
    writeln(ls);
    writeln(rs);
    writeln(0.reduce!"a + b"(ls) + 0.reduce!"a + b"(rs));
}