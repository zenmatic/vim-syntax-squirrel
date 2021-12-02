// arrays.txt
local a=["I'm a string", 123]
print(typeof a[0]) //prints "string"
print(typeof a[1]) //prints "integer"

// classes.txt
class Foo {
    //constructor
    constructor(a)
    {
        testy = ["stuff",1,2,3,a];
    }
    //member function
    function PrintTesty()
    {
        foreach(i,val in testy)
        {
            ::print("idx = "+i+" = "+val+" \n");
        }
    }
    //property
    testy = null;
}
Foo <- class {
    //constructor
    constructor(a)
    {
        testy = ["stuff",1,2,3,a];
    }
    //member function
    function PrintTesty()
    {
        foreach(i,val in testy)
        {
            ::print("idx = "+i+" = "+val+" \n");
        }
    }
    //property
    testy = null;
}
//just 2 regular nested tables
FakeNamespace <- {
    Utils = {}
}
class FakeNamespace.Utils.SuperClass {
    constructor()
    {
        ::print("FakeNamespace.Utils.SuperClass")
    }
    function DoSomething()
    {
        ::print("DoSomething()")
    }
}
function FakeNamespace::Utils::SuperClass::DoSomethingElse()
{
    ::print("FakeNamespace::Utils::SuperClass::DoSomethingElse()")
}
local testy = FakeNamespace.Utils.SuperClass();
testy.DoSomething();
testy.DoSomethingElse();
//adds a new property
Foo.stuff <- 10;
//modifies the default value of an existing property
Foo.testy <- "I'm a string";
//adds a new method
function Foo::DoSomething(a,b)
{
    return a+b;
}
class Foo {
    constructor()
    {
        //..stuff
    }
    name = "normal variable";
    //static variable
    static classname = "The class name is foo";
};
class Foo </ test = "I'm a class level attribute" />{
    </ test = "freakin attribute" /> //attributes of PrintTesty
    function PrintTesty()
    {
        foreach(i,val in testy)
        {
            ::print("idx = "+i+" = "+val+" \n");
        }
    }
    </ flippy = 10 , second = [1,2,3] /> //attributes of testy
    testy = null;
}
foreach(member,val in Foo)
{
    ::print(member+"\n");
    local attr;
    if((attr = Foo.getattributes(member)) != null) {
        foreach(i,v in attr)
        {
            ::print("\t"+i+" = "+(typeof v)+"\n");
        }
    }
    else {
        ::print("\t<no attributes>\n")
    }
}
//creates a new instance of Foo
local inst = Foo();

            class Foo {
              myarray = [1,2,3]
              mytable = {}
            }
            local a = Foo();
            local b = Foo();
            class Foo {
              myarray = null
              mytable = null
              constructor()
              {
                myarray = [1,2,3]
                mytable = {}
              }
            }
            local a = Foo();
            local b = Foo();

class Rect {
    constructor(w,h)
    {
        width = w;
        height = h;
    }
    x = 0;
    y = 0;
    width = null;
    height = null;
}
//Rect's constructor has 2 parameters so the class has to be 'called'
//with 2 parameters
local rc = Rect(100,100);
local rc = Rect(100,100);
if(rc instanceof ::Rect) {
    ::print("It's a rect");
}
else {
    ::print("It isn't a rect");
}
class SuperFoo extends Foo {
    function DoSomething() {
        ::print("I'm doing something");
    }
}
class Foo {
    function DoSomething() {
        ::print("I'm the base");
    }
};
class SuperFoo extends Foo {
    //overridden method
    function DoSomething() {
        //calls the base method
        base.DoSomething();
        ::print("I'm doing something");
    }
}
class BaseClass {
    constructor()
    {
        ::print("Base constructor\n");
    }
}
class ChildClass extends BaseClass {
    constructor()
    {
        base.constructor();
        ::print("Child constructor\n");
    }
}
local test = ChildClass();
local thebaseclass = SuperFoo.getbase();
class Foo {
    function DoSomething() {
        ::print("I'm the base");
    }
    function DoIt()
    {
        DoSomething();
    }
};
class SuperFoo extends Foo {
    //overridden method
    function DoSomething() {
        ::print("I'm the derived");
    }
    function DoIt() {
        base.DoIt();
    }
}
//creates a new instance of SuperFoo
local inst = SuperFoo();
//prints "I'm the derived"
inst.DoIt();
class Vector3 {
    constructor(...)
    {
        if(vargv.len() >= 3) {
            x = vargv[0];
            y = vargv[1];
            z = vargv[2];
        }
    }
    function _add(other)
    {
        return ::Vector3(x+other.x,y+other.y,z+other.z);
    }
    x = 0;
    y = 0;
    z = 0;
}
local v0 = Vector3(1,2,3)
local v1 = Vector3(11,12,13)
local v2 = v0 + v1;
::print(v2.x+","+v2.y+","+v2.z+"\n");

// builtin_functions.txt
local compiledscript=compilestring("::print(\"ciao\")");
//run the script
compiledscript();
runs the garbage collector and returns the number of reference cycles found(and deleted) This function only works on garbage collector builds.
{
    func="DoStuff", //function name
    src="test.nut", //source file
    line=10,        //line number
    locals = {      //a table containing the local variables
        a=10,
        testy="I'm a string"
    }
}
function custom_compare(a,b)
{
    if(a>b) return 1
    else if(a<b) return -1
    return 0;
}
arr.sort(@(a,b) a <=> b);
//the data is returned as a table is in form
//pure squirrel function
{
  native = false
  name = "zefuncname"
  src = "/somthing/something.nut"
  parameters = ["a","b","c"]
  defparams = [1,"def"]
  varargs = 2
}
//native C function
{
  native = true
  name = "zefuncname"
  paramscheck = 2
  typecheck = [83886082,83886384] //this is the typemask (see C defines OT_INTEGER,OT_FLOAT etc...)
}
:param key: ze key

// metamethods.txt
local comparable={
    _cmp = function (other)
    {
        if(name<other.name)return -1;
        if(name>other.name)return 1;
        return 0;
    }
}
local a={ name="Alberto" }.setdelegate(comparable);
local b={ name="Wouter" }.setdelegate(comparable);
if(a>b)
    print("a>b")
else
    print("b<=a");
class Comparable {
    constructor(n)
    {
        name = n;
    }
    function _cmp(other)
    {
        if(name<other.name) return -1;
        if(name>other.name) return 1;
        return 0;
    }
    name = null;
}
local a = Comparable("Alberto");
local b = Comparable("Wouter");
if(a>b)
    print("a>b")
else
    print("b<=a");
_set(idx,val)
_get(idx,val)
_newslot(key,value)
_delslot(key)
_add(other)
_sub(other)
_mul(other)
_div(other)
_modulo(other)
_unm()
_tyoeof()
_cmp(other)
_call(other)
_cloned(original)
_nexti(previdx)
_tostring(previdx)
_inherited(attributes)
_newmember(index,value,attributes,isstatic)

// functions.txt
local a = function(a, b, c) { return a + b - c; }
function ciao(a,b,c)
{
    return a+b-c;
}
this.ciao <- function(a,b,c)
{
    return a+b-c;
}
local function tuna(a,b,c)
{
    return a+b-c;
}
local tuna = function(a,b,c)
{
    return a+b-c;
}
T <- {}
function T::ciao(a,b,c)
{
    return a+b-c;
}
//that is equivalent to write
T.ciao <- function(a,b,c)
{
    return a+b-c;
}
//or
T <- {
    function ciao(a,b,c)
    {
        return a+b-c;
    }
}
function test(a,b,c = 10, d = 20)
{
    ....
}
function test(a,b,...)
{
    for(local i = 0; i< vargv.len(); i++)
    {
        ::print("varparam "+i+" = "+vargv[i]+"\n");
    }
  foreach(i,val in vargv)
    {
        ::print("varparam "+i+" = "+val+"\n");
    }
}
test("goes in a","goes in b",0,1,2,3,4,5,6,7,8);
table.foo(a)
foo(x,y) // equivalent to this.foo(x,y)

local myexp = @(a,b) a + b
local myexp = function(a,b) { return a + b; }
local arr = [2,3,5,8,3,5,1,2,6];
arr.sort(@(a,b) a <=> b);
arr.sort(@(a,b) -(a <=> b));
local arr = [2,3,5,8,3,5,1,2,6];
arr.sort(function(a,b) { return a <=> b; } );
arr.sort(function(a,b) { return -(a <=> b); } );
local x=10,y=20
local testy="I'm testy"
function foo(a,b)
{
    ::print(testy);
    return a+b+x+y;
}
function loopy(n)
{
    if(n>0){
        ::print("n="+n+"\n");
        return loopy(n-1);
    }
}
loopy(1000);

// generators.txt
function geny(n)
{
    for(local i=1;i<=n;i+=1)
        yield i;
    return null;
}
local gtor=geny(10);
local x;
while(x=resume gtor) print(x+"\n");

// threads.txt
function coroutine_test(a,b)
{
    ::print(a+" "+b+"\n");
    local ret = ::suspend("suspend 1");
    ::print("the coroutine says "+ret+"\n");
    ret = ::suspend("suspend 2");
    ::print("the coroutine says "+ret+"\n");
    ret = ::suspend("suspend 3");
    ::print("the coroutine says "+ret+"\n");
    return "I'm done"
}
local coro = ::newthread(coroutine_test);
local susparam = coro.call("test","coroutine"); //starts the coroutine
local i = 1;
do
{
    ::print("suspend passed ("+susparam+")\n")
    susparam = coro.wakeup("ciao "+i);
    ++i;
}while(coro.getstatus()=="suspended")
::print("return passed ("+susparam+")\n")

function state1()
{
    ::suspend("state1");
    return state2(); //tail call
}
function state2()
{
    ::suspend("state2");
    return state3(); //tail call
}
function state3()
{
    ::suspend("state3");
    return state1(); //tail call
}
local statethread = ::newthread(state1)
::print(statethread.call()+"\n");
for(local i = 0; i < 10000; i++)
    ::print(statethread.wakeup()+"\n");

// weak_references.txt
local t = {}
local a = ["first","second","third"]
//creates a weakref to the array and assigns it to a table slot
t.thearray <- a.weakref();
print(t.thearray[0]);
a = 123;
::print(typeof(t.thearray))
local t = {}
local weakobj = t.weakref();
::print(typeof(weakobj))
::print(typeof(weakobj.ref()))

// delegation.txt
Entity <- {
}
function Entity::DoStuff()
{
    ::print(_name);
}
local newentity = {
    _name="I'm the new entity"
}
newentity.setdelegate(Entity)
newentity.DoStuff(); //prints "I'm the new entity"
local thedelegate = newentity.getdelegate();

// statements.txt
if(a>b)
    a=b;
else
    b=a;
////
if(a==10)
{
    b=a+b;
    return a;
}
function testy(n)
{
    local a=0;
    while(a<n) a+=1;
    while(1)
    {
        if(a<0) break;
        a-=1;
    }
}
local a=0;
do
{
    print(a+"\n");
    a+=1;
} while(a>100)

for(local a=0;a<10;a+=1)
    print(a+"\n");
//or
glob <- null
for(glob=0;glob<10;glob+=1){
    print(glob+"\n");
}
//or
for(;;){
    print(loops forever+"\n");
}
local a=[10,23,33,41,589,56]
foreach(idx,val in a)
    print("index="+idx+" value="+val+"\n");
//or
foreach(val in a)
    print("value="+val+"\n");

for(local a=0;a<10;a+=1)
    print(a);

// lexical_structure.txt
IntegerLiteral : [1-9][0-9]* | '0x' [0-9A-Fa-f]+ | ''' [.]+ ''' | 0[0-7]+
FloatLiteral : [0-9]+ '.' [0-9]+
FloatLiteral : [0-9]+ '.' 'e'|'E' '+'|'-' [0-9]+
StringLiteral: '"'[.]* '"'
VerbatimStringLiteral: '@''"'[.]* '"'
/*
this is
a multiline comment.
this lines will be ignored by the compiler
*/
//this is a single line comment. this line will be ignored by the compiler
# this is also a single line comment.

// expressions.txt
a = 10;
a <- 10;

a += 2;
//is the same as writing
a = a + 2;
x++
//is the same as writing
x = x + 1

local t=
{
    foo="I'm foo",
    [123]="I'm not foo"
}
if("foo" in t) dostuff("yep");
if(123 in t) dostuff();

local a={},b="squirrel"
print(typeof a); //will print "table"
print(typeof b); //will print "string"

local j=0,k=0;
for(local i=0; i<10; i++ , j++)
{
    k = i + j;
}
local a,k;
a = (k=1,k+2); //a becomes 3

local a = {} //create an empty table
local a = {
    slot1 = "I'm the slot value"
}
local a=
{
    [1]="I'm the value"
}
local table=
{
    a=10,
    b="string",
    [10]={},
    function bau(a,b)
    {
        return a+b;
    }
}
local x = {
  "id": 1,
  "name": "Foo",
  "price": 123,
  "tags": ["Bar","Eek"]
}
local x = {
  id = 1,
  name = "Foo",
  price = 123,
  tags = ["Bar","Eek"]
}

a <- [] //creates an empty array
a <- [1,"string!",[],{}] //creates an array with 4 elements

// execution_context.txt
_table["foo"]
_array[10]
_table.foo
function testy(arg)
{
    local a=10;
    print(a);
    return arg;
}
function testy(arg)
{
    local a=10;
    return arg+::foo;
}
function test() {
    foo = 10;
}
function test() {
    if("foo" in this) {
        this.foo = 10;
    }else {
        ::foo = 10;
    }
}

// constants_and_enumerations.txt
const foobar = 100;
const floatbar = 1.2;
const stringbar = "I'm a contant string";
local x = foobar * 2;
enum Stuff {
  first, //this will be 0
  second, //this will be 1
  third //this will be 2
}
enum Stuff {
  first = 10
  second = "string"
  third = 1.2
}
local x = Stuff.first * 2;
//creates a constant
getconsttable()["something"] <- "10"
//creates an enumeration
getconsttable()["somethingelse"] <- { a = "10", c = "20", d = "200"};
//deletes the constant
delete getconsttable()["something"]
//deletes the enumeration
delete getconsttable()["somethingelse"]

// datatypes.txt
local a = 123 //decimal
local b = 0x0012 //hexadecimal
local c = 075 //octal
local d = 'w' //char code
local a=1.0
local b=0.234
local a = "I'm a wonderful string\n"
// has a newline at the end of the string
local x = @"I'm a verbatim string\n"
// the \n is copied in the string same as \\n in a regular string "I'm a verbatim string\n"
local multiline = @"
    this is a multiline string
    it will ""embed"" all the new line
    characters
"
local a = null
local a = true;
local t={}
local test=
{
    a=10
    b=function(a) { return a+1; }
}
local a  = ["I'm","an","array"]
local b = [null]
b[0] = a[2];

// tables.txt
local a = {}
a.newslot = 1234
a.newslot <- 1234;
a[1] <- "I'm the value of the new slot";
a <- {
    test1=1234
    deleteme="now"
}
delete a.test1
print(delete a.deleteme); //this will print the string "now"

