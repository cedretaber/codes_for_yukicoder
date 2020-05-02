import std.stdio, std.algorithm, std.conv, std.array, std.string, std.math, std.typecons, std.numeric;

void main()
{
    auto N = readln.chomp.to!int % 360;
    writeln(N == 90 || N == 270 ? "Yes" : "No");
}