import std.stdio, std.algorithm, std.conv, std.array, std.string, std.math, std.typecons, std.numeric;

void main()
{
    writeln(readln.chomp.split(",").all!(s => s == "AC") ? "Done!" : "Failed...");
}