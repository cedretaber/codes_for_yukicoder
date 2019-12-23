import std.stdio, std.algorithm, std.conv, std.array, std.string, std.math, std.typecons, std.numeric;

void main()
{
    auto nm = readln.split.to!(long[]);
    auto N = nm[0];
    auto M = nm[1];

    if (M <= N) {
        writeln(0);
    } else {
        long w = 1;
        foreach (x; 2..N+1) {
            w = (w * x) % M;
        }
        writeln(w);
    }
}