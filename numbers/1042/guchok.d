import std.stdio, std.algorithm, std.conv, std.array, std.string, std.math, std.typecons, std.numeric;

void main()
{
    auto pq = readln.split.to!(double[]);
    auto P = pq[0];
    auto Q = pq[1];

    double l = 1, r = long.max.to!double;
    foreach (_; 0..100) {
        auto m = (l+r)/2;
        if (m^^2 < P + Q * m * log2(m)) {
            l = m;
        } else {
            r = m;
        }
    }
    writefln("%.12f", l);
}