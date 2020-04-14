import std.stdio, std.algorithm, std.conv, std.array, std.string, std.math, std.typecons, std.numeric;

void main()
{
    auto N = readln.chomp.to!int;
    char[] a, b;
    size_t i;
    foreach (_; 0..N) {
        auto ts = readln;
        if (ts[0] == '0') {
            a ~= ts[2];
        } else {
            b ~= ts[2];
        }
    }
    b.reverse();
    writeln(b ~ a);
}