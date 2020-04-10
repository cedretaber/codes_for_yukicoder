import std.stdio, std.algorithm, std.conv, std.array, std.string, std.math, std.typecons, std.numeric;

void main()
{
    auto N = readln.chomp.to!int;
    auto as = readln.split.to!(int[]);
    sort(as);
    auto bs = readln.split.to!(int[]);
    sort(bs);
    double w = 0, a = 0;
    do {
        do {
            a += 1;
            int c;
            foreach (i; 0..N) {
                if (as[i] > bs[i]) ++c;
            }
            if (c > N/2) w += 1;
        } while (nextPermutation(bs));
    } while (nextPermutation(as));
    writefln("%.12f", w / a);
}