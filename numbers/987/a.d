import std.stdio, std.algorithm, std.conv, std.array, std.string, std.math, std.typecons, std.numeric, core.bitop;

void main()
{
    auto nm = readln.split.to!(int[]);
    auto N = nm[0];
    auto M = nm[1];
    auto res = new long[][](N, M);
    auto line = readln.split;
    auto op = line[0];
    auto BS = line[1..$].to!(long[]);
    long[] AS;
    foreach (_; 0..N) AS ~= readln.chomp.to!long;
    foreach (i; 0..N) {
        foreach (j; 0..M) {
            res[i][j] = op == "+" ? AS[i] + BS[j] : AS[i] * BS[j];
        }
    }
    foreach (i; 0..N) writeln(res[i].to!(string[]).join(" "));
}