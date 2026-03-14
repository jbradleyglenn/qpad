/ comments look like this
/ ─── primitives ────────────────────────────────
x:42;
y:-3.14;
b:0b;
h:7h;
n:0N;
s:`hello;
str:"world";
vec:1 2 3 4 5;
bvec:1101b;

/ ─── symbols & strings ─────────────────────────
syms:`a`b`c`d;
mixed:(`foo;42;"bar";0b);

/ ─── operators & assignment ─────────────────────
z:x+y;
r:x*2;
q:x%y;
cmp:x>y;
eq:x=y;
both:x&y;
either:x|y;

/ ─── keywords ───────────────────────────────────
if[x>0; y:1];
while[x>0; x-:1];
do[3; x+:1];

t:([]a:1 2 3;b:`x`y`z;c:1.1 2.2 3.3);
select a,b from t where a>1;
select sum a by b from t;
update a:a*2 from t;
delete from t where a=1;

/ ─── builtins ───────────────────────────────────
count vec;
reverse vec;
distinct vec;
til 10;
enlist 99;
type x;
string x;
floor 3.7;
ceiling 3.2;
abs neg x;
sum vec;
avg vec;
min vec;
max vec;
first vec;
last vec;
group vec;

/ ─── lambdas & locals ───────────────────────────
f:{[a;b] a+b};
g:{x*x};
apply:f[3;4];

/ ─── adverbs ────────────────────────────────────
total:+/vec;
running:+\vec;
each:{x*2} each vec;

/ ─── nested brackets ────────────────────────────
h:{[x] $[x>0;x;neg x]};
res:@[{.Q.s value x};x;{x}];
m:(1 2;3 4;5 6);
r2:m[0;1];
