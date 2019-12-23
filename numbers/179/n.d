import std.stdio, std.algorithm, std.conv, std.array, std.string, std.math, std.typecons, std.numeric;

void main()
{
    auto hw = readln.split.to!(int[]);
    auto H = hw[0];
    auto W = hw[1];
    char[][] MAP;
    MAP.length = H;
    int b;
    foreach (i; 0..H) {
        MAP[i].length = W;
        foreach (j, e; readln.chomp.to!(char[])) {
            if (e == '#') ++b;
            MAP[i][j] = e;
        }
    }
    if (b == 0 || b%2 == 1) {
        writeln("NO");
        return;
    }

    auto MEMO = new int[][](H, W);

    int c;
    foreach (y; -H..H) {
        foreach (x; -W..W) {
            if (x == 0 && y == 0) continue;
            ++c;
            int d;
            foreach (i; 0..H) {
                foreach (j; 0..W) {
                    if (MAP[i][j] != '#' || MEMO[i][j] == c) continue;
                    if (i+y < 0 || i+y >= H || j+x < 0 || j+x >= W || MAP[i+y][j+x] != '#') goto next;
                    MEMO[i][j] = MEMO[i+y][j+x] = c;
                    d += 2;
                }
            }
            writeln("YES");
            return;
            next:
        }
    }
    writeln("NO");
}