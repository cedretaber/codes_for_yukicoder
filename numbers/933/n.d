import std.stdio, std.algorithm, std.conv, std.array, std.string, std.math, std.typecons, std.numeric;

void main()
{
    auto N = readln.strip.to!int;
    auto ps = readln.split.to!(long[]);

    long x = 1, t;
    foreach (p; ps) {
        if (p == 0) {
            writeln(0);
            return;
        }
        x = (x * p) % 9;
    }
    writeln(x == 0 ? 9 : x);
}