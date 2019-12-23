import std.stdio, std.algorithm, std.conv, std.array, std.string, std.math, std.typecons, std.numeric;

void main()
{
    auto nm = readln.split.to!(int[]);
    auto N = nm[0];
    auto M = nm[1];
    auto AS = readln.split.to!(long[]);

    long s;
    int c;
    foreach (a; AS) {
        if (a%2 == 1) {
            ++c;
            s += a;
        } else if (s) {
            if (c >= M) writeln(s);
            s = 0;
            c = 0;
        }
    }
    if (s && c >= M) writeln(s);
}