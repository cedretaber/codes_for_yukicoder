module study.yukicoder.numbers.83.n;import std.stdio, std.algorithm, std.conv, std.array, std.string, std.math, std.typecons, std.numeric;

void main()
{
    auto N = readln.chomp.to!int;
    char[] r;
    foreach (_; 0..N/2) r ~= '1';
    if (N%2 == 1) r[0] = '7';
    writeln(r);
}