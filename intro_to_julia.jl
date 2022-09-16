### A Pluto.jl notebook ###
# v0.19.11

using Markdown
using InteractiveUtils

# ╔═╡ 9ea0cd46-56ff-4c3c-984b-854cfeb421ba
begin
	using Dates
	using HypertextLiteral: @htl
	using Images
	using PlutoUI
	using ShortCodes
	TableOfContents(title="Content")
end

# ╔═╡ 136f891c-3d4d-405b-bbbc-d1993f35e3b2
@htl("""
<div style="text-align: right;">Chapter 1</div>
<div style="text-align: right;"><i>last updated: $(Dates.now())</i></div>
<br>
<div style="text-align: right;"><a href="">Previous</a> | <a href="">Home</a> | <a href="">Next</a></div>
""")

# ╔═╡ 409d6b53-5eef-4597-a81c-d4540bea59fd
1 + 1

# ╔═╡ 27cf2406-6b34-4f9d-addd-fd4335d9e0c8
2 - 9 # this is a comment for this code

# ╔═╡ b70904dd-9153-4a65-aa47-a462c058d59a
3 * 8 # multiplication

# ╔═╡ 27894e62-25b6-4661-9031-e2cbe435d0e8
1 / 2 # division

# ╔═╡ fabe2aa0-0eb8-4b97-b292-13b3f5d1e033
3^2 # power, this is equivalent to 3 * 3

# ╔═╡ 7101cc06-78b7-4ab3-a404-5328f5847c5b
typeof(1)

# ╔═╡ e7024cc7-2674-4a14-b5b0-b7feb3a53e59
typeof(-1)

# ╔═╡ 039bb55c-3ac1-4bb2-a3bb-5087a512c737
typeof(100)

# ╔═╡ 1e9e0992-ff27-44fa-b639-492b3bca055b
typeof(10000000000000000000000000000)

# ╔═╡ 5300a2b6-aa48-44f4-a776-fdf8cd08d607
10_000

# ╔═╡ 19bf6c5a-e98a-4ee1-b005-149a2b1cd014
typeof(10_000_000_000_000_000_000_000_000_000)

# ╔═╡ 60f123f4-879c-44e4-b55b-c85d152e2a3d
typeof(2)

# ╔═╡ 3abb2243-3ecb-4565-a97b-b111933749da
typeof(convert(Int8, 2))

# ╔═╡ 117b0aff-22f6-412c-b729-3306d5993f54
typeof(1.0)

# ╔═╡ 5e62c091-9844-44a8-8508-097e1e2701c1
typeof(0.0)

# ╔═╡ 77e55509-df3b-4210-b0e1-f5424ccefeb5
typeof(-23.32)

# ╔═╡ 479854c9-7b0c-4568-aeb5-0ce5c3b1b111
typeof('a')

# ╔═╡ 8e871ee3-7481-4551-b430-8fb5e0877286
typeof("aaa")

# ╔═╡ eb82596b-dbad-48f9-b67c-b645493e4960
typeof("a")

# ╔═╡ 3aedb8ae-9cf0-44f5-8df8-199441ca2c31
true

# ╔═╡ 3ca8a335-cdca-4c38-978a-304477b2efba
typeof(true)

# ╔═╡ 3f2b4cc2-6fc5-49c4-91ec-b700d9db0e9d
typeof(false)

# ╔═╡ 7cf124cf-8171-4de8-96cd-312015368e6f
sym1 = :apple

# ╔═╡ 2a0e50cf-bf32-4864-8baf-0ad5e0520a30
sym2 = :egg

# ╔═╡ a4074903-d68e-43d7-bdc6-48e1abe09bfd
typeof(sym1)

# ╔═╡ f34193be-a6c4-4d20-a2f0-ed5a7ffdfb06
input_int = 145

# ╔═╡ 502a6d37-f5c3-4640-afd3-df3cb03caa79
typeof(input_int)

# ╔═╡ d14359bb-2b6b-4537-bbf2-ad28bd92fc8d
to_float1 = convert(Float64, input_int)

# ╔═╡ 60b20897-7c64-4851-8f9c-b86ad09e7daf
typeof(to_float1)

# ╔═╡ a386a26b-a5ea-4c8f-8e36-158a66ea2ac9
to_float2 = Float64(input_int)

# ╔═╡ a3d3b36b-fcf4-4f5f-9250-580bc0b3d94d
to_float1 == to_float2

# ╔═╡ 7c6b91c0-42a9-4b5e-87f9-e4353560cf03
to_int = convert(Int64, to_float1)

# ╔═╡ 4bd47342-f382-479b-aabe-c9308a6305a3
to_int == input_int

# ╔═╡ 2df295de-2ab2-4223-b4c7-dffddaabb00f
input_str = "salaam"

# ╔═╡ b7b636d4-0431-4696-bdd3-952ff095ffa9
typeof(input_str)

# ╔═╡ faa2cd2b-f7bf-4bd0-9bcc-e2fc7cd114df
to_symbol = Symbol(input_str)

# ╔═╡ 4e6f4287-a868-483e-ace4-6de1d6fa1be1
to_string = String(to_symbol)

# ╔═╡ a6da9e1f-8aa0-4776-85e8-52e04d819b90
input_str == to_string

# ╔═╡ 825693f6-5d42-420e-87c9-8d57882073dd
str1 = "150"

# ╔═╡ d640d377-7c71-410f-8400-992eb4f2b742
parse(Int64, str1)

# ╔═╡ 281c116a-8e1e-4f8a-9c0a-5e60f41097b0
str2 = "45.2123"

# ╔═╡ fbde7bdd-3491-4df7-a592-3dc37a918cda
parse(Int64, str2)

# ╔═╡ 5f88414a-1b80-4ac6-9def-5e689233baa3
parse(Float64, str2)

# ╔═╡ f4efe128-58c6-4b85-998c-9ae7cba5cc5b
1 == 1 # checks if 1 is equal to 1

# ╔═╡ 546933d2-a63b-4b58-b1f9-987edf512fb2
1 == 1.0

# ╔═╡ 9159c19d-38ed-4a50-b6a3-0f8ceb771a58
1 == 2 # checks if 1 is equal to 2

# ╔═╡ a27eb5d9-d940-4aef-95de-5e344932d67d
1 != 2 # checks if 1 is not equal to 2

# ╔═╡ 6d84bc29-7ba0-458d-9867-4efe281988b9
3 > 2 # checks if 3 is greater than 2

# ╔═╡ c79eee20-181e-4cd5-b7ed-9fe7494630a5
3 < 2 # checks if 3 is less than 2

# ╔═╡ 0a39a923-303e-4412-8170-5b8c3aa4ba69
2.5 <= 2.5 # checks if 2.5 is less than or equal to 2.5

# ╔═╡ b6706d85-69b2-4788-a94b-c8d3b5d47cae
1 === 1.0

# ╔═╡ 2be2192b-04f9-4180-8d71-542a587fc712
1.0 === 1.0

# ╔═╡ 1d4baab6-1c2b-4380-85c7-8629e0462504
x = 3

# ╔═╡ 9058db93-980f-4f35-83ad-8bc0ecaa8102
x

# ╔═╡ 0f8f3d0c-c563-4c3a-9dee-3159aefa45fb
x + 1

# ╔═╡ 061ef310-1236-4d5a-8d6f-48ce571327e6
x * 3

# ╔═╡ e95cc9e3-1d8a-4c76-8352-d8827ff85367
y = 0.7

# ╔═╡ 908545ee-43ad-4a49-b138-6944711272ae
x * y

# ╔═╡ 3f36e8de-60f5-4959-af80-a44f5ae13891
total = x + y;

# ╔═╡ 3db4921f-2d55-45e0-b8d5-584246d57053
total

# ╔═╡ c7ce4d56-d977-45cf-946c-231772aed4e6
hello = "Hello, World!";

# ╔═╡ 8fcf2530-0ecd-45b2-afcb-6e176f5aff4e
hello

# ╔═╡ 288be5a3-f674-449f-8074-dbe39eadb693
html"""
<h3>Greek letters</h3>
<p>
As mentioned earlier, in Mathematics, it is a practice to use Greek letters for variables as well. In Julia, this can be accessed by the backslash (following the <a href="https://en.wikipedia.org/wiki/LaTeX">LaTeX</a> command.) followed by the name of the Greek letter, then pressing <code>tab</code> to generate. For example, for the Greek letter Beta, β, we type in the command <code>\beta</code> then press <kbd>tab</kbd> to generate the Unicode. So that, using this as variable with assigned value of 2.5, we have
</p>
"""

# ╔═╡ cb8b1304-857e-4b66-80fc-b85b98480722
β = 2.5;

# ╔═╡ d1bea374-6f4b-4d15-a680-76f314f70561
Ω = 2;

# ╔═╡ 0b8a9a05-8287-43c7-85cc-287d83b77414
β * Ω 

# ╔═╡ 4229c9ee-5f7d-47ac-89ff-42a79dfb32a6
𝔊 = 10_000;

# ╔═╡ 13e7efb3-6b02-4c07-bee6-4a8fd022382b
𝔊 * 2

# ╔═╡ 48d0f901-e9c1-4597-9477-cefb678eb4ae
🤗 = "hugging face";

# ╔═╡ 6c892bc7-1328-4918-9d88-9c3576c73fd4
💓 = "heart";

# ╔═╡ 278d9735-6178-4ae9-9b83-e773dba25d3a
🕌 = "mosque";

# ╔═╡ a4d3e189-be2d-42a8-a22f-43e2be5ff7d1
🚴 = "bike";

# ╔═╡ 8700d5b6-34d7-4c5b-b1d3-d5720ffd465e
🤗

# ╔═╡ 4d7ce3b7-5d5d-476e-90d7-1fff5a6a9e03
💓

# ╔═╡ 23fb2d09-31d3-495d-9cda-f23b1a1eaab7
const 🐱 = "cat"; 🐱 = "dog"

# ╔═╡ 925b1d6f-23f0-4477-87a3-cfa55a2fa796
🐱

# ╔═╡ 2aff2bb4-04f6-4b7e-b3be-3201138ae75c
message1_a = "I have a lovely " * 💓 * " and a " * 🤗

# ╔═╡ 70ffd325-c929-4184-b875-89ad31b2d165
message1_b = "I have a lovely $💓 and a $🤗"

# ╔═╡ 54e56c1e-466d-4dfc-ad9e-4782af73a2ae
string("I prefer to ride a ", 🚴, " when I go to the ", 🕌)

# ╔═╡ b1796b9a-44aa-41de-a883-40dbdb152d0e
👳 = "شيخ";

# ╔═╡ 03246c6d-730c-4aed-97fe-3a44109de126
🕋 = "الكعبة";

# ╔═╡ bd710ffd-da86-42b2-8b79-b305f0751086
message2 = "My $👳 performed umrah by circumambulating $🕋."

# ╔═╡ 0e26af96-6f62-47f4-a959-aea471659f8b
hello2 = "Hello, \n\tWorld!"

# ╔═╡ 3f54d4e6-d61a-49e5-b400-f2a2aacd6e36
print(hello2)

# ╔═╡ 78d2d4f3-8411-4514-8ac1-3a195de44705
allah_names = "الرَّحْمَنُ (The Beneficient) \n\t الرَّحِيمُ (The Merciful) \n\t\t الْمَلِكُ (The King)";

# ╔═╡ 33569177-08b2-4876-86d7-c006d1ae9bcd
print(allah_names)

# ╔═╡ f0024759-463a-49d4-b5bd-593eb066003b
long_text = "The quick brown fox 
	jumps over the lazy dog"

# ╔═╡ ccbbb026-34aa-43dc-9ab4-f0944ff50161
message1_a[1]

# ╔═╡ d7b4cf10-79f4-4e27-89bb-1f374ad19234
message1_a[3:5]

# ╔═╡ ef5e066d-6656-45ec-a53f-54ab26b5e240
message1_a[6:end]

# ╔═╡ baf6761f-9537-4e89-bf7a-ecfc5cbe94bc
message1_a[end-1:end]

# ╔═╡ 06156f98-35c2-4e24-8163-1db0596a97b1
message1_a[end]

# ╔═╡ fce885c4-de9e-4e0d-a506-a7d8eba8906c
message1_a[[1,3,5,7]]

# ╔═╡ 702f6a73-4934-45b4-beb9-09296597448c
🕌[end-2:end]

# ╔═╡ c40a5ea1-9f22-421d-b74d-252c876fe416
💓[end-2:end]

# ╔═╡ 1929f54a-f609-483b-a643-d043d4c428b9
👳

# ╔═╡ fab9267b-c786-42ff-9217-cd86804443a6
getindex(x, start_idx, end_idx) = x[prevind(x, start_idx):nextind(x, end_idx)]

# ╔═╡ 35d7c122-0131-4968-89ad-13c7c2b9990b
md"""
# Introduction to Julia programming language

There are several tools one can use for doing Digital Humanities depending on the problem. For this book, we assume that we can solve this problem using a programming language, in this case, we use Julia. Julia is a relatively new programming language, that is about 10 years already since its first announcement. It is a general purpose programming language in the sense that it can be used for solving different tasks, from simple math to as complex as creating an enterprise-grade software or website. It is, however, popular for numerical computing and is therefore ideal for doing Digital Humanities. In this chapter, we are going to take a look on how to use Julia as a programming language.
"""

# ╔═╡ 91cb4dfd-f1fa-47b5-9949-52c926612753
md"""
## Numerical computations
You can think of Julia or any programming language as an advanced calculator, such that it can do more than that including creating softwares. In this section, we will walkthrough the _numerical computations_ of the language.
"""

# ╔═╡ 60eee930-5f8a-432c-8061-22ca98b38f56
md"""
### Elementary operations 
Elementary operations such as _addition_, _subtraction_, _multiplications_, and _divisions_ are among the basic operations of any programming language; and, this is straightforward in Julia as shown below.
"""

# ╔═╡ 3500465d-129b-4f94-bcb3-49bd00e8ce0d
md"Any texts after `#` above is ignored by Julia, thus `#` is the command for adding comment in the code."

# ╔═╡ 767eb808-686b-4a36-be54-26f691cb04c9
md"""
## Types
Julia is a type language, although this is also optional.
"""

# ╔═╡ 20cb07f0-02e9-45f4-9e30-936c36789146
md"""
### Integer
The first type is the Integer, which is simply a whole number that includes 0 and negative values. In Julia this is represented as `Int` type. You can think of Integer as any number without a decimal point.
"""

# ╔═╡ ac1291ef-c4d5-473e-bb0f-f7b2907b33fd
md"Also, each Integer has a size, this size defines the size it occupies in the memory of your computer. By default, the size of Integer is 64 bit, in Julia this is `Int64`."

# ╔═╡ b23adf8c-2b26-4f47-9564-06a6016688c2
md"The above example shows as a large integer that occupies 128 bit. Also, in Julia you can write long expression with underscores as whitespace representation. Example,"

# ╔═╡ 6f93d38a-6a44-4cf1-9bdc-a4672157a6d6
md"So that, the example for `Int128` can be written as"

# ╔═╡ 4611b5a0-5234-4f5f-94f7-7e8622faa975
md"The use of underscore for whitespacing large numbers is useful for readability."

# ╔═╡ eca81518-8710-4623-a048-3a64d1967f7b
md"Lastly, bit sizes can be as low as 8 bits. So, one would expect a Int8. However, since 64 bits is the default, we can convert it to 8 bits for small Integer. Example"

# ╔═╡ 4a0356d2-6203-4b3f-b404-01b9bc5c5d28
md"The example above may look a little advance from the discussions already, and indeed this is discussed in the later part, but the code above simply converts the Integer 2 from the default size of 64 bits to 8 bits."

# ╔═╡ 7fd1544d-37d4-459a-a8b0-3f2789fa5ba4
md"""
### Float
Numbers with decimal point are a type of Float, and like Integer it also comes with sizes in bit. Example, 
"""

# ╔═╡ 7dda5d30-5f48-40dc-9e14-d10cd30a289e
md"""
### String
Think of String as a string of characters. Example,
"""

# ╔═╡ 639c689b-aa34-422c-be0c-78c2f810352c
md"Notice the difference, `'a'` is a single character invoked using a single quote command `'`, whereas a String is a invoked using a double quote command `\"`. So that, if `'a'` is put under double quote it becomes a String."

# ╔═╡ 0aff98ed-2d5d-4f4c-898b-ed5426086061
md"""
### Boolean
Boolean types are values from conditional operators discussed in the next section. These values are `true` or `false`.
"""

# ╔═╡ 513cd356-8419-4a75-a35f-d722d8215317
md"These are the basic types. There are many other types and one can actually create one (custom types are discussed in the Chapter 5)."

# ╔═╡ e379b58a-f212-4bc1-9984-4ebf51472d32
md"""
### Symbol
Symbol is another type in Julia. It is invoked by prefixing an expression with colon symbol, i.e. `:`. It is similar to string but it has no length, rather it is treated as single value like a character.
"""

# ╔═╡ c18cab53-ab61-49f2-9506-30fafbff2b25
md"Symbol is a good alternative to String, in that it is useful if the length of the input is not important. Symbol is also use as the primary unit of Metaprogramming discussed in the next chapter."

# ╔═╡ 102ffc64-c58d-4eba-a0b5-55436f000c20
md"""
## Converting Types
At times, it is necessary to convert one type to another. In Julia, `convert` function is used. Example, to convert Integer to Float, we do:
"""

# ╔═╡ 4593bdb2-7dca-4482-8d0d-4e6cd7ec6b1a
md"Or, this is equivalent to"

# ╔═╡ f506849e-cee1-443b-b7b2-376bc3cbe298
md"""
### Float to Integer
To convert Float to Integer, we do
"""

# ╔═╡ fa63fbfb-1490-45c7-8718-3f59305d85fa
md"""
### String to Symbol
To convert String to Symbol, we do
"""

# ╔═╡ b2c9c5ad-b049-4938-b7db-ca4770966312
md"""
### Symbol to String
To convert Symbol to String, we do
"""

# ╔═╡ dacc49fb-6cb8-4c4e-9445-7ba3a14ef4c8
md"""
### String to Integer
To convert String to Integer, the first requirement is to make sure the input is a string of number. Next is to use the `parse` function. Example,
"""

# ╔═╡ 4ff2f720-1b09-497f-b218-32bce70904ec
md"We got an error, because the input is not a string of integer but a string of number with decimal point."

# ╔═╡ 5a2f792f-2ded-41c4-a7d4-a2018d509af2
md"""
### String to Float
The error above where we tried to parse a string of number with decimal point to Integer is done as follows:
"""

# ╔═╡ b6473b30-f369-48ee-9cb2-565ddfba498b
md"""
## Conditional operators
Conditional operators are useful for checking equality and inequality of two expressions.
"""

# ╔═╡ 83dbc493-e2d8-4b8e-9b1a-9233fee15f9c
md"""
### Accounting type
The above examples simply check if both expression from left and right of the conditional operator are equal or not in _values_. If we want to check if the two expressions are _not only equal in values, but also in type_, then we use triple character conditional operators as follows:
"""

# ╔═╡ e8336d08-c6ad-4f03-87b7-5a4bcc0199ae
md"While 1 and 1.0 are equal in value, they both are different in type. 1 is a Integer while 1.0 is a Float."

# ╔═╡ e935f3d6-f7ef-4d25-9e1a-4c523c85ce53
md"""
## Assignment operator
In Mathematics, the numerical values are often assigned or stored to a variable, which is indicated as a Roman letter, Greek letter, or a string of these (i.e, the variable name).

For example, we could assign 3 to a variable `x`. In Julia, we do this as follows:
"""

# ╔═╡ bc4142f3-68e8-4b2a-9b0f-81c0a98646c8
md"""
From here, we can call `x` and check the value stored/assigned to it.
"""

# ╔═╡ 76936ba7-20e4-469f-bc26-e0dee33f05b5
md"""
And from this, we can do mathematical operations. For example,
"""

# ╔═╡ e67d7f7b-00f6-4d0d-b881-e4fa48ec7b8b
md"Or multiplication,"

# ╔═╡ 71d10d8e-18b6-49ee-9865-4512da2f55ce
md"""
Suppose we want to create a new variable `y` with assigned value of 0.7, then we have
"""

# ╔═╡ 6287a0b1-afe0-4017-81da-59a3d146c794
md"So that, `x` times `y` would be 2.099 as shown below"

# ╔═╡ c93360dd-32d6-4ac1-949c-91f2f182d005
md"Of course, you can use a string of letters as the variable, in this case, it forms a name, making it a variable name. For example,"

# ╔═╡ 2d3eecc6-4429-4d95-be40-e657b2dd47ab
md"""The total sum of `x` and `y` above is therefore assigned to the variable `total`, which we've confirmed after calling the said variable.

Notice, however, the use of `;` after the line does not print the total sum. Indeed, this is a feature of Julia, and removing the semicolon will immediately print the output upon running the cell above.
"""

# ╔═╡ c8b8b55c-d9b0-478d-b15b-acc8782fe549
md"What we've shown above are variables with numeric values, we can also use character or string values. For example,"

# ╔═╡ 9317d2df-52be-46f2-801f-4446eb97551e
md"So that, if we have big Omega, `Ω`, equal to 0.5, then"

# ╔═╡ bbbe9826-c17d-4431-91c5-1faee7339d66
md"The product of which multiplied to `β` is"

# ╔═╡ 1e1969ad-8ff1-4e67-a6d0-af7213642910
md"""
### Other LaTeX letters
The command for generating Greek letters as mentioned above follows the [LaTeX](https://en.wikipedia.org/wiki/LaTeX) command. As such, there are many other letters available to use. For example, the _mathfrak_ letters accessible with the `\frak<letter>` command, where `<letter>` is the placefolder for the Roman letters. So for example, 𝔄 is accessible via the command `\frakA`. These extensive letters to choose from are meant to capture a representative variable used in your math.
"""

# ╔═╡ bf94313c-98c8-4f69-8ac6-d74a486164c0
md"Notice also the underscore, `_`, feature of Julia used as spacing for long numbers for readability."

# ╔═╡ d6292883-a946-4076-830a-fb6f280614bd
md"""
### Emoji
Yes, Julia can also use emojis as variables. For example, 
"""

# ╔═╡ 166be534-09e9-4a28-95ce-811809146227
md"To use the emojis, simply copy and paste it here. For example, you can use _https://emojipedia.org/_ to search for the emoji you want."

# ╔═╡ 31c27914-72eb-420b-bc8a-db25f3362115
md"""
### Constant variable
There are cases where a variable is constant, that is, we only set it to a particular value and we expect it to be true for all computations we do. So that,
"""

# ╔═╡ e5a14fd8-6b90-41a0-8693-23b5c03d7a0a
md"Setting 🐱 to constant suggest that 🐱's value is constant in this notebook, so that changing it is not possible since the assumption is that it is constant and does not change. Example,"

# ╔═╡ 39bc0c2e-45b4-44d6-98cd-8d1f33c19ab9
md"""
## String operations
Apart from numerical computations, we can also do string operations in Julia. For example,
"""

# ╔═╡ 93b7d841-a579-4faa-8f5b-1362fc793d0e
md"Or, using string interpolation through the `$` command:"

# ╔═╡ 0b238fe6-3dbc-4e71-910f-ff3f937000fe
md"Another alternative is to use the `string` command"

# ╔═╡ 40155044-cc67-42b4-b908-57e39f548ca4
md"Julia can also work with Arabic or a combination with English. For example,"

# ╔═╡ 4265adc7-67ce-481c-b222-b8550c27c755
md"""
### String escaping
String escaping is used for spacing and linebreak. The commands are: `\t` for tab-space and `\n` for linebreak. For example,
"""

# ╔═╡ d9e445c5-846c-48dd-adba-d667cc53bb83
md"So that, using the `print` function gives us"

# ╔═╡ 6aa73d58-70df-4129-b311-457dc25745bc
md"If you have a long text and you break it and added a tab, as in the example below, the output will add these whitespaces as through the escaping commands"

# ╔═╡ 738c28c8-92f4-4048-a937-af35d3d0308d
md"""
### Indexing string
Strings in Julia can be indexed using a bracket, `[<index>]`. For example, the first letter in `message1` is
"""

# ╔═╡ 870a00d3-7662-4234-8c39-a58d6028821a
md"Further, extracting the third to fifth letters only would make the message as"

# ╔═╡ 3da9b716-2a61-4c4d-a4ff-372f8f0f971e
md"Showing the sixth to last letters of the message"

# ╔═╡ b2fc6361-d31f-43ae-a1f4-ad3946e247e5
md"The last two letters are:"

# ╔═╡ c7ed170a-fd0e-4381-91d7-369b9b620adf
md"So that, the last letter is"

# ╔═╡ 096249e8-77dc-4d7b-b8ef-a77288b58b70
md"Extracting the first, third, fifth and sevent letters becomes:"

# ╔═╡ b3040278-e80f-4069-962a-96e8760fe757
md"The `[1,3,5,7]` is a list operation (discussed further below), where we can list the index we want inside a close bracket as well."

# ╔═╡ 757af62e-718a-4164-929e-7809b935b826
md"Of course this applies to the emoji as variables. For example, the last three letters in the word `mosque` and `heart` is"

# ╔═╡ bf0fa7ad-95f3-4414-a99d-95f3b0663271
md"""
### Indexing Arabic string
The Arabic string cannot be indexed the same way as the Roman letters, since the Arabic letters composed of more than 1-byte.
"""

# ╔═╡ 3c1163ce-cf72-4d65-a14b-86d2b8625edb
md"""
### String splitting
String splitting is done using the `split` function. For example, we can split the string of `message2` variable by whitespace as shown below:
"""

# ╔═╡ cae0e4d3-610b-4c74-8566-5cdd113af6bd
splitted_message2 = split(message2, " ")

# ╔═╡ 9692e292-a1c8-4908-9735-07edc5ea7546
md"The result is a vector, you can think of this like a list."

# ╔═╡ 672f07f7-a350-4cbb-b069-45ddaf03ba2b
md"Another example, we can split the string of 🕌 through the letters `sq`, then"

# ╔═╡ 9084501f-16c3-4b16-89e9-42a935bb5d64
split(🕌, "sq")

# ╔═╡ eacb9530-cd15-4145-88dc-2e1a047c1a91
md"""
## Arrays
From the preceding section, we've seen the first example of a vector, which is actually a type of Array. This particular Array, i.e. the vector, is a one-dimentional-column Array. Array is a fundamental unit of Linear Algebra, a topic discussed in Appendix B. 

Array is useful for storing elements such that Linear Algebra operations can also be done. This is to emphasize its difference from Sets, which will be discussed in the next section.
"""

# ╔═╡ 1447744b-e3cc-4f02-87f0-f4e0dbb43449
column_vector = ["a", "b", "c", "d"] # one-dimensional-column Array

# ╔═╡ a52eaac4-18d6-4171-abff-d51d02f4f821
md"To check how many elements are there in a vector, we use the `size` function."

# ╔═╡ b2a80cd1-4961-4450-87ff-904da0048d7d
size(column_vector)

# ╔═╡ 7d335be5-21ad-40ea-9a82-b68e6f354c2e
md"In this case, the variable `column_vector` has four elements."

# ╔═╡ 71d567fa-948b-472b-8f7a-34c7bc54cc6a
row_vector = [1 2 3 4] # two-dimensional-row Array

# ╔═╡ 22401b7d-049b-4ff6-af64-5e87d9503b86
size(row_vector)

# ╔═╡ 7142bcc7-786b-4a60-af1f-65707ea463f1
md"As regards `row_vector`, it is a two-dimensional Array. These two-dimensions comprises the row and column, in which there is one row and four columns. Another example of two-dimensional Array is given below:"

# ╔═╡ 1ed3c7bc-b9fa-4c7a-b6c5-caf12ea20af7
matrix1 = [[1 2 3];
           [4 5 6];
           [7 8 9]] # two-dimensional Array

# ╔═╡ 525288ac-9f75-4b4c-99e7-95269a4a5264
size(matrix1)

# ╔═╡ 8c557a15-5783-4622-b3f2-7aa480a705e1
md"Arrays can go for more dimensions, details on this can be found [here](https://docs.julialang.org/en/v1/manual/arrays/)."

# ╔═╡ 607caa2b-cb3a-4f55-bd66-b61046c9f5a1
md"""
### Array indexing
Arrays can be indexed by using the bracket, `[<index>]`, where `<index>` is the placeholder for the index, same as in indexing the string above. So, to index the first element of the `column_vector`, we do the following:
"""

# ╔═╡ c665d6cb-552e-4127-92d0-8ab46e5af338
column_vector[1]

# ╔═╡ 6a097a6b-79b4-41ef-8e68-39eec33c4b8a
md"For last value, we extract it as follows:"

# ╔═╡ 856c31f0-d4e7-453e-bfc5-0a26ca79bc33
column_vector[end]

# ╔═╡ 05a817a6-caa8-4c6e-9d26-332e68747d17
md"First two elements, we do:"

# ╔═╡ e08c1eb6-553a-48ad-b76a-7540f0b27527
column_vector[1:2]

# ╔═╡ bab168d4-9b2f-4253-a6f6-30947b01624c
md"For second and fourth element, we extract as:"

# ╔═╡ 24d003c6-3172-4372-b6e7-651c528a853f
column_vector[[2, 4]]

# ╔═╡ e70f473b-fc12-4858-94e7-66360e1d59ce
md"Or,"

# ╔═╡ d443f9bf-751e-4501-b511-474f3c6b14e2
column_vector[[2, end]]

# ╔═╡ 0084c065-db52-4cd6-a0ef-b724bd39c2e4
md"To extract second to last element, we do"

# ╔═╡ b2a30209-db8d-46e6-aa54-b2499ae7a63f
column_vector[2:end]

# ╔═╡ 589bbd02-eb07-4a7c-a2d2-b08817770e98
md"""
### Two-dimensional indexing
The examples above only apply for one-dimensional. As regards two-dimensional, we do two indexing, for the row and column indices. So, to extract the second column of first row of `matrix1`, we do the following:
"""

# ╔═╡ e46fe9e4-0e0d-41e8-9bc9-63c20c5bdeaa
matrix1[1, 2]

# ╔═╡ d18bca39-1930-4a25-8880-71130874801e
md"""So inside the bracket, we have two indices and these are the index for row, which in this case is 1, and the index for column, which in this case is 2.

For each index-placeholder of two-dimensional Array, we can apply the different types of indexing of the one-dimensional array. Examples,"""

# ╔═╡ 1f954c2f-0e86-41b7-9079-670e3aa19d6c
matrix1[2:end, [1, 3]]

# ╔═╡ 7882e1cc-68ea-467f-9377-77e368ce4967
md"If we want to index all rows of column two, we do it as follows:"

# ╔═╡ 81751a80-5622-4b58-9dc9-249d8f10a965
matrix1[:, 2]

# ╔═╡ 5730232b-295c-4175-9013-df2fc3cc03ab
md"Or, if we want to index all columns of row three, we do this as follows:"

# ╔═╡ 222d70e2-008d-443b-b2c0-5cfeca41601f
matrix1[3, :]

# ╔═╡ b8adc2fa-c54e-429d-a691-84749026ac7a
md"""
### Array mutation
Mutation is defined by updating the particular element of the Array. For example, using the `column_vector` and say we want to replace the value of the second element from `"b"` to `"e"`, we do it as follows:
"""

# ╔═╡ 938b45fd-4254-419d-a26c-f8a0f680a6c3
column_vector

# ╔═╡ aeb30d0c-493f-45dc-b270-46888860c294
column_vector[2] = "e"

# ╔═╡ 51074833-d208-4dfe-9c33-4a48cc511da7
column_vector

# ╔═╡ ec1ddbdc-c635-4b7b-b505-504eabf99de5
md"Another example, suppose we want to update the third column of second row of `matrix1` from 6 to 0, then we have"

# ╔═╡ 9d16d156-1927-4a6c-b48c-0098b3580ad0
matrix1

# ╔═╡ 9a55def6-3857-4327-9d98-1de4087c07ff
matrix1[2, 3] = 0

# ╔═╡ e68316c6-a048-4ca3-9796-0e27e45aa7dc
matrix1

# ╔═╡ 6eabcd6a-0a68-4230-b697-cde11084db6f
md"""
## Tuple
Tuple is a type of data collection function, in which the elements are immutable. You can think of this as a list like the vector discussed in the Arrays section above, but this one is a special list. Unlike vector, the elements inside Tuple cannot be updated, that is Tuple is not mutable. Further, Tuple does not have multiple dimension (like the Arrays, example a Matrix), it is simply a list, a one-dimensional list. It is invoked using the function Tuple or the parentheses, example
"""

# ╔═╡ dbc5ace3-19a2-4ba4-8de9-99eee075be46
tuple1 = Tuple([1,2,3])

# ╔═╡ 7b2ab6c0-a556-4afa-a345-0808a12fd105
tuple2 = (1,2,3)

# ╔═╡ ef0cbc5c-0881-4e90-9973-644bf6d53dfa
tuple1 == tuple2

# ╔═╡ 013c96db-e35f-443c-829f-65fb0db68fcf
md"At first the Tuple is seems to be the same with a column vector. For example,"

# ╔═╡ a3ab17d0-d8e2-43a0-ba87-4bb4ca1d7c29
ex_tuple = (1, 1.0, "a", true)

# ╔═╡ b6f97eaa-2493-4cfa-9fda-f6f2ff945332
ex_array = [1, 1.0, "a", true]

# ╔═╡ c5c85948-cb5b-4ff6-a1e1-494f021ae4b3
typeof(ex_tuple)

# ╔═╡ e71e3a66-b137-42b2-a900-ebe7df04730a
typeof(ex_array)

# ╔═╡ c71326de-efd7-4472-b8ed-6fd7dbf9999b
md"The output of `ex_tuple` is `Tuple{Int64, Float64, String, Bool}`, which suggests that the first element is an Integer, next is Float, then a String, and finally a Boolean. Whereas `ex_array` output is a `Vector{Any} (alias for Array{Any, 1})`, that is a Vector of type `Any`, that is, the vector contains not a single type only but a combinatons, hence `Any` to suggest that its elements can have _any type_.

The difference will be obvious in the section below, the _Tuple mutation_."

# ╔═╡ 1b14d084-17fc-4dd3-af8b-a4d6d682ad20
md"""
### Tuple indexing
Tuple is indexed in the same way the Vector is indexed.
"""

# ╔═╡ 09350c1e-0c31-470d-92e7-1c6fe3a61e12
ex_tuple[1]

# ╔═╡ e1099345-c0a6-45d1-bd3a-b52ce5e28e85
ex_tuple[end]

# ╔═╡ 08b6ed32-2791-441f-b06d-507c50f28b77
ex_tuple[end-1]

# ╔═╡ 8a22b589-cd11-4b02-9b25-bad6dd6948e5
md"""
### Tuple mutation
As emphasized earlier, _Tuple is not mutable_, this is unlike a one-dimensional Array, i.e. the vector.
"""

# ╔═╡ 5fb976c6-ebac-409c-95b1-7eadfc529271
ex_array

# ╔═╡ 436b4af5-41f6-4785-9095-c71f0115bf33
ex_array[end] = false # change the last element of ex_array to false from true

# ╔═╡ 9153530c-7538-4adb-88c8-994e349f15d4
ex_array

# ╔═╡ f25ce37f-24cd-4038-9f07-6805db219a15
md"Therefore, Array is mutable. However, Tuple is not as shown below:"

# ╔═╡ b42f4276-da61-4108-859d-e3a87e158f9e
ex_tuple

# ╔═╡ 9b79df21-54ac-4869-9020-9af29f942bd9
ex_tuple[end] = false

# ╔═╡ e1fe12e6-4ed5-4eee-8ccc-6e8e5238b479
md"The error simply suggest the last element of the Tuple cannot be changed, which is expected since the element in the Tuple cannot be mutated."

# ╔═╡ 3df96e40-b96d-44df-9606-688b645268d8
md"""
## Sets
Set is another data collection, similar to Array and Tuple. It is also _immutable_ just like Tuple, but it does not follow a take note of the arrangement of its input element, and because of this Set is not indexable. Lastly, all of its element are distinct, any repeated values in its element only encodes one representative.
"""

# ╔═╡ d18632f6-a392-40e1-ba56-d6bce96e39f3
setA = Set([1,2,3])

# ╔═╡ 42a21faf-0abc-4934-a107-2a26accacc59
md"Notice the arrange of input is different from the arrangement of the output"

# ╔═╡ f97420e7-0e07-449e-a141-49c9d1129208
setB = Set([1,2,2,3,3])

# ╔═╡ 055e07e6-a4cd-4493-b7ee-3e6de50bda6d
md"Notice the repeated 2 and 3 in the input code are only encoded ones in the output. So that, `SetA` and `SetB` are equal."

# ╔═╡ 16565795-f926-4bd0-806f-c7b7cfebbc34
setA == setB

# ╔═╡ 46233fd6-c58f-4c22-af76-f93e07dcc2ed
setA[1]

# ╔═╡ e399523f-3f59-45eb-9386-60d8a0c4d69c
md"The error above shows that Set is not indexable, and therefore Set is also immutable as shown in the error below:"

# ╔═╡ 9899abf4-d205-4c4b-baf0-21e1c3bed648
setA[1] = 3

# ╔═╡ 7e8c3bfc-31fe-459f-a55b-5da5306949ed
md"""
### Set operations
Set has operations that is only applicable to Set. These are the operations from the Mathematics of Set Theory.
"""

# ╔═╡ 9313d68a-add9-42cc-9b9d-03dea7d731f4
md"""
#### Union
Union operator is use for the union of two sets. Example,
"""

# ╔═╡ d1ec2da1-ef7c-4e2f-a3e7-a463fd159fd2
setA

# ╔═╡ 63a7c1fb-3255-494b-b886-ddb409c3a71d
setC = Set([🕌, 👳, 2])

# ╔═╡ 31eae950-e6bf-4eed-bb63-1bebdac10743
AuC1 = union(setA, setC)

# ╔═╡ 3c320159-c339-475f-bfc0-cc032ca15060
md"In Mathematics, union operator is denoted by $\cup$, and Julia uses the unicode of this symbol an alias name for the `union` function. So that,"

# ╔═╡ 8d1f6881-f98e-4573-a9c2-1fdcbac8b130
AuC2 = setA ∪ setC

# ╔═╡ 10c90369-cbeb-4b1c-a7c0-24686d4e2f15
AuC1 == AuC2

# ╔═╡ d914e9f0-4d0d-470e-80cc-ab98293df801
md"""
#### Intersection
Intersection operator is use for the extracting the element/s that is/are common in two input sets.
"""

# ╔═╡ 79e778d0-fe44-4421-817b-ead071654bf0
AnC1 = intersect(setA, setC)

# ╔═╡ 6440087d-35aa-46ee-b041-9d12d6f855ef
md"In Mathematics, intersection operator is denoted by $\cap$, and Julia uses the unicode of this symbol as an alias name for the `intersect` function. So that,"

# ╔═╡ f2961941-560c-439a-bd79-1710dcee7b65
AnC2 = setA ∩ setC

# ╔═╡ 503a4007-a6b1-40bd-87d0-93c7d4d0d666
AnC1 == AnC2

# ╔═╡ 1a5d1e21-95b0-4692-8eb4-df3900bc99ab
md"""
#### Difference
The set difference of Set A and Set B is a Set containing all elements of A not in B. Example,
"""

# ╔═╡ 6aa74f46-e2b4-4ef1-8586-918c80ff7e6b
setdiff(setA, setC)

# ╔═╡ d949e1d0-158a-4f23-b826-18905a3a2af1
md"Here we got a Set with elements 3 and 1, since these are in Set A but not in Set B."

# ╔═╡ 30d92967-7900-451b-9c9e-b94ea37bc854
md"""
#### Subset and Superset
Subset and superset are like inequality operations (i.e. the `<`, `>`, `<=`, and `>=`) but for Set. In particular, subset checks whether all elements of a set is also a part of the elements of another set. Example,
"""

# ╔═╡ 83e088bd-be32-46e6-ab5b-b6b4bed3f4e5
setD = Set(["a", "b", "c", "d"])

# ╔═╡ 86a75e2d-25ba-4e38-b3f5-6c798de27ff9
setE = Set(["b", "c"])

# ╔═╡ 3a701fad-d1c7-4d22-a06c-cab65d22d403
EsubD1 = issubset(setE, setD)

# ╔═╡ 730d4658-3245-429d-a2c9-5d6001073171
md"The output of the `issubset` above is `true` because `setE` is a subset of `setD`. That is, the elements of `setE` are in also elements of `setD`. Further, this is equivalent to saying `setD` is a superset of `setE`.

In Mathematics, subset is denoted by $\subseteq$, and Julia uses the unicode of this symbol as an alias for the `subset` function.
"

# ╔═╡ 56aee0c3-9f32-454c-a2b4-c9caf96da7fb
EsubD2 = setE ⊆ setD

# ╔═╡ 2647277a-3ef6-4b5d-b3c0-2ea003ee5f16
EsubD1 == EsubD2

# ╔═╡ 361289a9-c14a-4cbd-a194-86d4b712a2ac
md"In terms of superset, this is equivalent to"

# ╔═╡ d0f81a63-8730-471b-80a1-6b0176e92b1d
DsupE = setD ⊇ setE

# ╔═╡ 06563760-21b1-44a4-b8d0-d23f079ec1f3
md"""
## Pair
Pair is another Julia type for data collection. Unlike Array, Tuple, and Set, Pair contains two entries as input, and these entries are expected to be a pair. Pair is denoted by the operator `=>`, example
"""

# ╔═╡ bc81217f-bd5f-417d-ac92-51b05a26f3d9
pair1 = "January" => 1

# ╔═╡ fef1e580-9dcb-4a8b-8301-9eb4c411fd6f
pair2 = "February" => 2

# ╔═╡ 0907efbd-53e4-4294-9bfc-7d0465f0ce4c
md"Pair is used to compose a Dictionary discussed in the next section."

# ╔═╡ 681f4dcd-7e3d-45ea-b21b-3f6cc7bc0e13
md"""
## Dictionary
Dictionary in Julia is another data collection. Dictionary contains two input, the _key_ and the _value_ of the key. Like a _dictionary_, whose entries contains two entries: the _word_ and the _definition of the word_. In this case, we can think of the _key_ of the Dictionary as the _word_ of the dictionary, and the _value_ as the _definition_. Example,
"""

# ╔═╡ 2d8b62cb-fa09-4de7-b3ac-0d687a9a027b
day_of_week = Dict(
	:Monday => "الأثنين", 
	:Tuesday => "الثلاثاء", 
	:Wednesday => "الأربعاء",
	:Thursday => "الخميس",
	:Friday => "الجمعه",
	:Saturday => "السبت",
	:Sunday => "الأحد"
)

# ╔═╡ d30aeb27-4661-4425-bd96-32fc30f4a018
md"So that, if I say, I want to get the value of `:Monday`, which will return the translation in Arabic, I simply run"

# ╔═╡ d38fcc2a-53cf-40ed-ba41-15e5c88af112
day_of_week[:Monday]

# ╔═╡ 73a52614-4cf5-4be2-a91f-a1d617a4d131
day_of_week[:Friday]

# ╔═╡ a476de91-5234-42e3-a50e-ec8617d7a81f
md"Another example, is to use the `pair1` and `pair2` above."

# ╔═╡ b8f77906-5e0a-4a4a-aca6-b0a0aa6e84cc
months = Dict(pair1, pair2)

# ╔═╡ c5da2d78-987c-4c79-87a5-b3ec474d0196
md"So that,"

# ╔═╡ a08857aa-ab3b-470c-9927-15d705f811c6
months["February"]

# ╔═╡ ee642408-2eed-464b-a178-6a4ce2d2f305
html"""
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Scheherazade+New:wght@400;700&family=Tajawal&display=swap" rel="stylesheet">
<style>
.ar-sch {
	font-family: 'Scheherazade New', serif;
}

.basmala {
	text-align: right;
}

.footer {
	font-family: Vollkorn,serif;
	font-size: 2.2rem;
	font-weight: 700;
	color: #e6e6e6;
}

kbd {
    background-color: #eee;
    border-radius: 3px;
    border: 1px solid #b4b4b4;
    box-shadow: 0 1px 1px rgba(0, 0, 0, .2), 0 2px 0 0 rgba(255, 255, 255, .7) inset;
    color: #333;
    display: inline-block;
    font-size: .85em;
    font-weight: 700;
    line-height: 1;
    padding: 2px 4px;
    white-space: nowrap;
}

</style>
<hr/>
"""

# ╔═╡ 9c41afd5-ea9a-41d7-895d-6077306a9f0d
begin
	# urls
	JL_VERSION = "1.6.7"
	JL_WEBSITE = "https://julialang.org/"
	JL_WEBSITE_DOWNLOAD = "https://julialang.org/downloads"
	JL_DOWNLOADS = "https://github.com/alstat/IslamicateDHJulia/blob/main/img/julia_downloads.png?raw=true"

	# color
	BORDER_COLOR = "#d2d4d6"
end;

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Dates = "ade2ca70-3891-5945-98fb-dc099432e06a"
HypertextLiteral = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
Images = "916415d5-f1e6-5110-898d-aaa5f9f070e0"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
ShortCodes = "f62ebe17-55c5-4640-972f-b59c0dd11ccf"

[compat]
HypertextLiteral = "~0.9.4"
Images = "~0.25.2"
PlutoUI = "~0.7.40"
ShortCodes = "~0.3.3"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

[[AbstractFFTs]]
deps = ["ChainRulesCore", "LinearAlgebra"]
git-tree-sha1 = "69f7020bd72f069c219b5e8c236c1fa90d2cb409"
uuid = "621f4979-c628-5d54-868e-fcf4e3e8185c"
version = "1.2.1"

[[AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[Adapt]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "195c5505521008abea5aee4f96930717958eac6f"
uuid = "79e6a3ab-5dfb-504d-930d-738a2a938a0e"
version = "3.4.0"

[[ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[ArnoldiMethod]]
deps = ["LinearAlgebra", "Random", "StaticArrays"]
git-tree-sha1 = "62e51b39331de8911e4a7ff6f5aaf38a5f4cc0ae"
uuid = "ec485272-7323-5ecc-a04f-4719b315124d"
version = "0.2.0"

[[Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[AxisAlgorithms]]
deps = ["LinearAlgebra", "Random", "SparseArrays", "WoodburyMatrices"]
git-tree-sha1 = "66771c8d21c8ff5e3a93379480a2307ac36863f7"
uuid = "13072b0f-2c55-5437-9ae7-d433b7a33950"
version = "1.0.1"

[[AxisArrays]]
deps = ["Dates", "IntervalSets", "IterTools", "RangeArrays"]
git-tree-sha1 = "1dd4d9f5beebac0c03446918741b1a03dc5e5788"
uuid = "39de3d68-74b9-583c-8d2d-e117c070f3a9"
version = "0.4.6"

[[Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[CEnum]]
git-tree-sha1 = "eb4cb44a499229b3b8426dcfb5dd85333951ff90"
uuid = "fa961155-64e5-5f13-b03f-caf6b980ea82"
version = "0.4.2"

[[Calculus]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f641eb0a4f00c343bbc32346e1217b86f3ce9dad"
uuid = "49dc2e85-a5d0-5ad3-a950-438e2897f1b9"
version = "0.5.1"

[[CatIndices]]
deps = ["CustomUnitRanges", "OffsetArrays"]
git-tree-sha1 = "a0f80a09780eed9b1d106a1bf62041c2efc995bc"
uuid = "aafaddc9-749c-510e-ac4f-586e18779b91"
version = "0.2.2"

[[ChainRulesCore]]
deps = ["Compat", "LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "dc4405cee4b2fe9e1108caec2d760b7ea758eca2"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "1.15.5"

[[ChangesOfVariables]]
deps = ["ChainRulesCore", "LinearAlgebra", "Test"]
git-tree-sha1 = "38f7a08f19d8810338d4f5085211c7dfa5d5bdd8"
uuid = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
version = "0.1.4"

[[Clustering]]
deps = ["Distances", "LinearAlgebra", "NearestNeighbors", "Printf", "SparseArrays", "Statistics", "StatsBase"]
git-tree-sha1 = "75479b7df4167267d75294d14b58244695beb2ac"
uuid = "aaaa29a8-35af-508c-8bc3-b662a17a0fe5"
version = "0.14.2"

[[CodecZlib]]
deps = ["TranscodingStreams", "Zlib_jll"]
git-tree-sha1 = "ded953804d019afa9a3f98981d99b33e3db7b6da"
uuid = "944b1d66-785c-5afd-91f1-9de20f533193"
version = "0.7.0"

[[ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[ColorVectorSpace]]
deps = ["ColorTypes", "FixedPointNumbers", "LinearAlgebra", "SpecialFunctions", "Statistics", "TensorCore"]
git-tree-sha1 = "d08c20eef1f2cbc6e60fd3612ac4340b89fea322"
uuid = "c3611d14-8923-5661-9e6a-0046d554d3a4"
version = "0.9.9"

[[Colors]]
deps = ["ColorTypes", "FixedPointNumbers", "Reexport"]
git-tree-sha1 = "417b0ed7b8b838aa6ca0a87aadf1bb9eb111ce40"
uuid = "5ae59095-9a9b-59fe-a467-6f913c188581"
version = "0.12.8"

[[Compat]]
deps = ["Dates", "LinearAlgebra", "UUIDs"]
git-tree-sha1 = "5856d3031cdb1f3b2b6340dfdc66b6d9a149a374"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.2.0"

[[CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[ComputationalResources]]
git-tree-sha1 = "52cb3ec90e8a8bea0e62e275ba577ad0f74821f7"
uuid = "ed09eef8-17a6-5b46-8889-db040fac31e3"
version = "0.3.2"

[[CoordinateTransformations]]
deps = ["LinearAlgebra", "StaticArrays"]
git-tree-sha1 = "681ea870b918e7cff7111da58791d7f718067a19"
uuid = "150eb455-5306-5404-9cee-2592286d6298"
version = "0.6.2"

[[CustomUnitRanges]]
git-tree-sha1 = "1a3f97f907e6dd8983b744d2642651bb162a3f7a"
uuid = "dc8bdbbb-1ca9-579f-8c36-e416f6a65cce"
version = "1.0.2"

[[DataAPI]]
git-tree-sha1 = "fb5f5316dd3fd4c5e7c30a24d50643b73e37cd40"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.10.0"

[[DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "d1fff3a548102f48987a52a2e0d114fa97d730f0"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.13"

[[Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[Distances]]
deps = ["LinearAlgebra", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "3258d0659f812acde79e8a74b11f17ac06d0ca04"
uuid = "b4f34e82-e78d-54a5-968a-f98e89d6e8f7"
version = "0.10.7"

[[Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[DocStringExtensions]]
deps = ["LibGit2"]
git-tree-sha1 = "5158c2b41018c5f7eb1470d558127ac274eca0c9"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.9.1"

[[Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[DualNumbers]]
deps = ["Calculus", "NaNMath", "SpecialFunctions"]
git-tree-sha1 = "5837a837389fccf076445fce071c8ddaea35a566"
uuid = "fa6b7ba4-c1ee-5f82-b5fc-ecf0adba8f74"
version = "0.6.8"

[[FFTViews]]
deps = ["CustomUnitRanges", "FFTW"]
git-tree-sha1 = "cbdf14d1e8c7c8aacbe8b19862e0179fd08321c2"
uuid = "4f61f5a4-77b1-5117-aa51-3ab5ef4ef0cd"
version = "0.3.2"

[[FFTW]]
deps = ["AbstractFFTs", "FFTW_jll", "LinearAlgebra", "MKL_jll", "Preferences", "Reexport"]
git-tree-sha1 = "90630efff0894f8142308e334473eba54c433549"
uuid = "7a1cc6ca-52ef-59f5-83cd-3a7055c09341"
version = "1.5.0"

[[FFTW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c6033cc3892d0ef5bb9cd29b7f2f0331ea5184ea"
uuid = "f5851436-0d7a-5f13-b9de-f02708fd171a"
version = "3.3.10+0"

[[FileIO]]
deps = ["Pkg", "Requires", "UUIDs"]
git-tree-sha1 = "94f5101b96d2d968ace56f7f2db19d0a5f592e28"
uuid = "5789e2e9-d7fb-5bc7-8068-2c6fae9b9549"
version = "1.15.0"

[[FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[Graphics]]
deps = ["Colors", "LinearAlgebra", "NaNMath"]
git-tree-sha1 = "d61890399bc535850c4bf08e4e0d3a7ad0f21cbd"
uuid = "a2bd30eb-e257-5431-a919-1863eab51364"
version = "1.1.2"

[[Graphs]]
deps = ["ArnoldiMethod", "Compat", "DataStructures", "Distributed", "Inflate", "LinearAlgebra", "Random", "SharedArrays", "SimpleTraits", "SparseArrays", "Statistics"]
git-tree-sha1 = "a6d30bdc378d340912f48abf01281aab68c0dec8"
uuid = "86223c79-3864-5bf0-83f7-82e725a168b6"
version = "1.7.2"

[[HTTP]]
deps = ["Base64", "Dates", "IniFile", "Logging", "MbedTLS", "NetworkOptions", "Sockets", "URIs"]
git-tree-sha1 = "0fa77022fe4b511826b39c894c90daf5fce3334a"
uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3"
version = "0.9.17"

[[Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[ImageAxes]]
deps = ["AxisArrays", "ImageBase", "ImageCore", "Reexport", "SimpleTraits"]
git-tree-sha1 = "c54b581a83008dc7f292e205f4c409ab5caa0f04"
uuid = "2803e5a7-5153-5ecf-9a86-9b4c37f5f5ac"
version = "0.6.10"

[[ImageBase]]
deps = ["ImageCore", "Reexport"]
git-tree-sha1 = "b51bb8cae22c66d0f6357e3bcb6363145ef20835"
uuid = "c817782e-172a-44cc-b673-b171935fbb9e"
version = "0.1.5"

[[ImageContrastAdjustment]]
deps = ["ImageCore", "ImageTransformations", "Parameters"]
git-tree-sha1 = "0d75cafa80cf22026cea21a8e6cf965295003edc"
uuid = "f332f351-ec65-5f6a-b3d1-319c6670881a"
version = "0.3.10"

[[ImageCore]]
deps = ["AbstractFFTs", "ColorVectorSpace", "Colors", "FixedPointNumbers", "Graphics", "MappedArrays", "MosaicViews", "OffsetArrays", "PaddedViews", "Reexport"]
git-tree-sha1 = "acf614720ef026d38400b3817614c45882d75500"
uuid = "a09fc81d-aa75-5fe9-8630-4744c3626534"
version = "0.9.4"

[[ImageDistances]]
deps = ["Distances", "ImageCore", "ImageMorphology", "LinearAlgebra", "Statistics"]
git-tree-sha1 = "b1798a4a6b9aafb530f8f0c4a7b2eb5501e2f2a3"
uuid = "51556ac3-7006-55f5-8cb3-34580c88182d"
version = "0.2.16"

[[ImageFiltering]]
deps = ["CatIndices", "ComputationalResources", "DataStructures", "FFTViews", "FFTW", "ImageBase", "ImageCore", "LinearAlgebra", "OffsetArrays", "Reexport", "SparseArrays", "StaticArrays", "Statistics", "TiledIteration"]
git-tree-sha1 = "8b251ec0582187eff1ee5c0220501ef30a59d2f7"
uuid = "6a3955dd-da59-5b1f-98d4-e7296123deb5"
version = "0.7.2"

[[ImageIO]]
deps = ["FileIO", "IndirectArrays", "JpegTurbo", "LazyModules", "Netpbm", "OpenEXR", "PNGFiles", "QOI", "Sixel", "TiffImages", "UUIDs"]
git-tree-sha1 = "342f789fd041a55166764c351da1710db97ce0e0"
uuid = "82e4d734-157c-48bb-816b-45c225c6df19"
version = "0.6.6"

[[ImageMagick]]
deps = ["FileIO", "ImageCore", "ImageMagick_jll", "InteractiveUtils"]
git-tree-sha1 = "ca8d917903e7a1126b6583a097c5cb7a0bedeac1"
uuid = "6218d12a-5da1-5696-b52f-db25d2ecc6d1"
version = "1.2.2"

[[ImageMagick_jll]]
deps = ["JpegTurbo_jll", "Libdl", "Libtiff_jll", "Pkg", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "1c0a2295cca535fabaf2029062912591e9b61987"
uuid = "c73af94c-d91f-53ed-93a7-00f77d67a9d7"
version = "6.9.10-12+3"

[[ImageMetadata]]
deps = ["AxisArrays", "ImageAxes", "ImageBase", "ImageCore"]
git-tree-sha1 = "36cbaebed194b292590cba2593da27b34763804a"
uuid = "bc367c6b-8a6b-528e-b4bd-a4b897500b49"
version = "0.9.8"

[[ImageMorphology]]
deps = ["ImageCore", "LinearAlgebra", "Requires", "TiledIteration"]
git-tree-sha1 = "e7c68ab3df4a75511ba33fc5d8d9098007b579a8"
uuid = "787d08f9-d448-5407-9aad-5290dd7ab264"
version = "0.3.2"

[[ImageQualityIndexes]]
deps = ["ImageContrastAdjustment", "ImageCore", "ImageDistances", "ImageFiltering", "LazyModules", "OffsetArrays", "Statistics"]
git-tree-sha1 = "0c703732335a75e683aec7fdfc6d5d1ebd7c596f"
uuid = "2996bd0c-7a13-11e9-2da2-2f5ce47296a9"
version = "0.3.3"

[[ImageSegmentation]]
deps = ["Clustering", "DataStructures", "Distances", "Graphs", "ImageCore", "ImageFiltering", "ImageMorphology", "LinearAlgebra", "MetaGraphs", "RegionTrees", "SimpleWeightedGraphs", "StaticArrays", "Statistics"]
git-tree-sha1 = "36832067ea220818d105d718527d6ed02385bf22"
uuid = "80713f31-8817-5129-9cf8-209ff8fb23e1"
version = "1.7.0"

[[ImageShow]]
deps = ["Base64", "FileIO", "ImageBase", "ImageCore", "OffsetArrays", "StackViews"]
git-tree-sha1 = "b563cf9ae75a635592fc73d3eb78b86220e55bd8"
uuid = "4e3cecfd-b093-5904-9786-8bbb286a6a31"
version = "0.3.6"

[[ImageTransformations]]
deps = ["AxisAlgorithms", "ColorVectorSpace", "CoordinateTransformations", "ImageBase", "ImageCore", "Interpolations", "OffsetArrays", "Rotations", "StaticArrays"]
git-tree-sha1 = "8717482f4a2108c9358e5c3ca903d3a6113badc9"
uuid = "02fcd773-0e25-5acc-982a-7f6622650795"
version = "0.9.5"

[[Images]]
deps = ["Base64", "FileIO", "Graphics", "ImageAxes", "ImageBase", "ImageContrastAdjustment", "ImageCore", "ImageDistances", "ImageFiltering", "ImageIO", "ImageMagick", "ImageMetadata", "ImageMorphology", "ImageQualityIndexes", "ImageSegmentation", "ImageShow", "ImageTransformations", "IndirectArrays", "IntegralArrays", "Random", "Reexport", "SparseArrays", "StaticArrays", "Statistics", "StatsBase", "TiledIteration"]
git-tree-sha1 = "03d1301b7ec885b266c0f816f338368c6c0b81bd"
uuid = "916415d5-f1e6-5110-898d-aaa5f9f070e0"
version = "0.25.2"

[[Imath_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "87f7662e03a649cffa2e05bf19c303e168732d3e"
uuid = "905a6f67-0a94-5f89-b386-d35d92009cd1"
version = "3.1.2+0"

[[IndirectArrays]]
git-tree-sha1 = "012e604e1c7458645cb8b436f8fba789a51b257f"
uuid = "9b13fd28-a010-5f03-acff-a1bbcff69959"
version = "1.0.0"

[[Inflate]]
git-tree-sha1 = "5cd07aab533df5170988219191dfad0519391428"
uuid = "d25df0c9-e2be-5dd7-82c8-3ad0b3e990b9"
version = "0.1.3"

[[IniFile]]
git-tree-sha1 = "f550e6e32074c939295eb5ea6de31849ac2c9625"
uuid = "83e8ac13-25f8-5344-8a64-a9f2b223428f"
version = "0.5.1"

[[IntegralArrays]]
deps = ["ColorTypes", "FixedPointNumbers", "IntervalSets"]
git-tree-sha1 = "be8e690c3973443bec584db3346ddc904d4884eb"
uuid = "1d092043-8f09-5a30-832f-7509e371ab51"
version = "0.1.5"

[[IntelOpenMP_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "d979e54b71da82f3a65b62553da4fc3d18c9004c"
uuid = "1d5cc7b8-4909-519e-a0f8-d0f5ad9712d0"
version = "2018.0.3+2"

[[InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[Interpolations]]
deps = ["Adapt", "AxisAlgorithms", "ChainRulesCore", "LinearAlgebra", "OffsetArrays", "Random", "Ratios", "Requires", "SharedArrays", "SparseArrays", "StaticArrays", "WoodburyMatrices"]
git-tree-sha1 = "f67b55b6447d36733596aea445a9f119e83498b6"
uuid = "a98d9a8b-a2ab-59e6-89dd-64a1c18fca59"
version = "0.14.5"

[[IntervalSets]]
deps = ["Dates", "Random", "Statistics"]
git-tree-sha1 = "076bb0da51a8c8d1229936a1af7bdfacd65037e1"
uuid = "8197267c-284f-5f27-9208-e0e47529a953"
version = "0.7.2"

[[InverseFunctions]]
deps = ["Test"]
git-tree-sha1 = "b3364212fb5d870f724876ffcd34dd8ec6d98918"
uuid = "3587e190-3f89-42d0-90ee-14403ec27112"
version = "0.1.7"

[[IrrationalConstants]]
git-tree-sha1 = "7fd44fd4ff43fc60815f8e764c0f352b83c49151"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.1.1"

[[IterTools]]
git-tree-sha1 = "fa6287a4469f5e048d763df38279ee729fbd44e5"
uuid = "c8e1da08-722c-5040-9ed9-7db0dc04731e"
version = "1.4.0"

[[JLD2]]
deps = ["FileIO", "MacroTools", "Mmap", "OrderedCollections", "Pkg", "Printf", "Reexport", "TranscodingStreams", "UUIDs"]
git-tree-sha1 = "81b9477b49402b47fbe7f7ae0b252077f53e4a08"
uuid = "033835bb-8acc-5ee8-8aae-3f567f8a3819"
version = "0.4.22"

[[JLLWrappers]]
deps = ["Preferences"]
git-tree-sha1 = "abc9885a7ca2052a736a600f7fa66209f96506e1"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.4.1"

[[JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[JSON3]]
deps = ["Dates", "Mmap", "Parsers", "StructTypes", "UUIDs"]
git-tree-sha1 = "fd6f0cae36f42525567108a42c1c674af2ac620d"
uuid = "0f8b85d8-7281-11e9-16c2-39a750bddbf1"
version = "1.9.5"

[[JpegTurbo]]
deps = ["CEnum", "FileIO", "ImageCore", "JpegTurbo_jll", "TOML"]
git-tree-sha1 = "a77b273f1ddec645d1b7c4fd5fb98c8f90ad10a5"
uuid = "b835a17e-a41a-41e7-81f0-2f016b05efe0"
version = "0.1.1"

[[JpegTurbo_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b53380851c6e6664204efb2e62cd24fa5c47e4ba"
uuid = "aacddb02-875f-59d6-b918-886e6ef4fbf8"
version = "2.1.2+0"

[[LERC_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "bf36f528eec6634efc60d7ec062008f171071434"
uuid = "88015f11-f218-50d7-93a8-a6af411a945d"
version = "3.0.0+1"

[[LazyArtifacts]]
deps = ["Artifacts", "Pkg"]
uuid = "4af54fe1-eca0-43a8-85a7-787d91b784e3"

[[LazyModules]]
git-tree-sha1 = "a560dd966b386ac9ae60bdd3a3d3a326062d3c3e"
uuid = "8cdb02fc-e678-4876-92c5-9defec4f444e"
version = "0.3.1"

[[LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[Libtiff_jll]]
deps = ["Artifacts", "JLLWrappers", "JpegTurbo_jll", "LERC_jll", "Libdl", "Pkg", "Zlib_jll", "Zstd_jll"]
git-tree-sha1 = "3eb79b0ca5764d4799c06699573fd8f533259713"
uuid = "89763e89-9b03-5906-acba-b20f662cd828"
version = "4.4.0+0"

[[LinearAlgebra]]
deps = ["Libdl"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[LogExpFunctions]]
deps = ["ChainRulesCore", "ChangesOfVariables", "DocStringExtensions", "InverseFunctions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "94d9c52ca447e23eac0c0f074effbcd38830deb5"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.18"

[[Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[MKL_jll]]
deps = ["Artifacts", "IntelOpenMP_jll", "JLLWrappers", "LazyArtifacts", "Libdl", "Pkg"]
git-tree-sha1 = "41d162ae9c868218b1f3fe78cba878aa348c2d26"
uuid = "856f044c-d86e-5d09-b602-aeab76dc8ba7"
version = "2022.1.0+0"

[[MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "3d3e902b31198a27340d0bf00d6ac452866021cf"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.9"

[[MappedArrays]]
git-tree-sha1 = "e8b359ef06ec72e8c030463fe02efe5527ee5142"
uuid = "dbb5928d-eab1-5f90-85c2-b9b0edb7c900"
version = "0.4.1"

[[Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[MbedTLS]]
deps = ["Dates", "MbedTLS_jll", "MozillaCACerts_jll", "Random", "Sockets"]
git-tree-sha1 = "ae6676d5f576ccd21b6789c2cbe2ba24fcc8075d"
uuid = "739be429-bea8-5141-9913-cc70e7f3736d"
version = "1.1.5"

[[MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[Memoize]]
deps = ["MacroTools"]
git-tree-sha1 = "2b1dfcba103de714d31c033b5dacc2e4a12c7caa"
uuid = "c03570c3-d221-55d1-a50c-7939bbd78826"
version = "0.4.4"

[[MetaGraphs]]
deps = ["Graphs", "JLD2", "Random"]
git-tree-sha1 = "2af69ff3c024d13bde52b34a2a7d6887d4e7b438"
uuid = "626554b9-1ddb-594c-aa3c-2596fe9399a5"
version = "0.7.1"

[[Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "bf210ce90b6c9eed32d25dbcae1ebc565df2687f"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.0.2"

[[Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[MosaicViews]]
deps = ["MappedArrays", "OffsetArrays", "PaddedViews", "StackViews"]
git-tree-sha1 = "b34e3bc3ca7c94914418637cb10cc4d1d80d877d"
uuid = "e94cdb99-869f-56ef-bcf0-1ae2bcbe0389"
version = "0.3.3"

[[MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[NaNMath]]
deps = ["OpenLibm_jll"]
git-tree-sha1 = "a7c3d1da1189a1c2fe843a3bfa04d18d20eb3211"
uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3"
version = "1.0.1"

[[NearestNeighbors]]
deps = ["Distances", "StaticArrays"]
git-tree-sha1 = "0e353ed734b1747fc20cd4cba0edd9ac027eff6a"
uuid = "b8a86587-4115-5ab1-83bc-aa920d37bbce"
version = "0.4.11"

[[Netpbm]]
deps = ["FileIO", "ImageCore"]
git-tree-sha1 = "18efc06f6ec36a8b801b23f076e3c6ac7c3bf153"
uuid = "f09324ee-3d7c-5217-9330-fc30815ba969"
version = "1.0.2"

[[NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[OffsetArrays]]
deps = ["Adapt"]
git-tree-sha1 = "1ea784113a6aa054c5ebd95945fa5e52c2f378e7"
uuid = "6fe1bfb0-de20-5000-8ca7-80f57d26f881"
version = "1.12.7"

[[OpenEXR]]
deps = ["Colors", "FileIO", "OpenEXR_jll"]
git-tree-sha1 = "327f53360fdb54df7ecd01e96ef1983536d1e633"
uuid = "52e1d378-f018-4a11-a4be-720524705ac7"
version = "0.3.2"

[[OpenEXR_jll]]
deps = ["Artifacts", "Imath_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "923319661e9a22712f24596ce81c54fc0366f304"
uuid = "18a262bb-aa17-5467-a713-aee519bc75cb"
version = "3.1.1+0"

[[OpenLibm_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "05823500-19ac-5b8b-9628-191a04bc5112"

[[OpenSpecFun_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "13652491f6856acfd2db29360e1bbcd4565d04f1"
uuid = "efe28fd5-8261-553b-a9e1-b2916fc3738e"
version = "0.5.5+0"

[[OrderedCollections]]
git-tree-sha1 = "85f8e6578bf1f9ee0d11e7bb1b1456435479d47c"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.4.1"

[[PNGFiles]]
deps = ["Base64", "CEnum", "ImageCore", "IndirectArrays", "OffsetArrays", "libpng_jll"]
git-tree-sha1 = "e925a64b8585aa9f4e3047b8d2cdc3f0e79fd4e4"
uuid = "f57f5aa1-a3ce-4bc8-8ab9-96f992907883"
version = "0.3.16"

[[PaddedViews]]
deps = ["OffsetArrays"]
git-tree-sha1 = "03a7a85b76381a3d04c7a1656039197e70eda03d"
uuid = "5432bcbf-9aad-5242-b902-cca2824c8663"
version = "0.5.11"

[[Parameters]]
deps = ["OrderedCollections", "UnPack"]
git-tree-sha1 = "34c0e9ad262e5f7fc75b10a9952ca7692cfc5fbe"
uuid = "d96e819e-fc66-5662-9728-84c9c7592b0a"
version = "0.12.3"

[[Parsers]]
deps = ["Dates"]
git-tree-sha1 = "3d5bf43e3e8b412656404ed9466f1dcbf7c50269"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.4.0"

[[Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[PkgVersion]]
deps = ["Pkg"]
git-tree-sha1 = "f6cf8e7944e50901594838951729a1861e668cb8"
uuid = "eebad327-c553-4316-9ea0-9fa01ccd7688"
version = "0.3.2"

[[PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "a602d7b0babfca89005da04d89223b867b55319f"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.40"

[[Preferences]]
deps = ["TOML"]
git-tree-sha1 = "47e5f437cc0e7ef2ce8406ce1e7e24d44915f88d"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.3.0"

[[Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[ProgressMeter]]
deps = ["Distributed", "Printf"]
git-tree-sha1 = "d7a7aef8f8f2d537104f170139553b14dfe39fe9"
uuid = "92933f4c-e287-5a05-a399-4b506db050ca"
version = "1.7.2"

[[QOI]]
deps = ["ColorTypes", "FileIO", "FixedPointNumbers"]
git-tree-sha1 = "18e8f4d1426e965c7b532ddd260599e1510d26ce"
uuid = "4b34888f-f399-49d4-9bb3-47ed5cae4e65"
version = "1.0.0"

[[Quaternions]]
deps = ["DualNumbers", "LinearAlgebra", "Random"]
git-tree-sha1 = "b327e4db3f2202a4efafe7569fcbe409106a1f75"
uuid = "94ee1d12-ae83-5a48-8b1c-48b8ff168ae0"
version = "0.5.6"

[[REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[Random]]
deps = ["Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[RangeArrays]]
git-tree-sha1 = "b9039e93773ddcfc828f12aadf7115b4b4d225f5"
uuid = "b3c3ace0-ae52-54e7-9d0b-2c1406fd6b9d"
version = "0.3.2"

[[Ratios]]
deps = ["Requires"]
git-tree-sha1 = "dc84268fe0e3335a62e315a3a7cf2afa7178a734"
uuid = "c84ed2f1-dad5-54f0-aa8e-dbefe2724439"
version = "0.4.3"

[[Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[RegionTrees]]
deps = ["IterTools", "LinearAlgebra", "StaticArrays"]
git-tree-sha1 = "4618ed0da7a251c7f92e869ae1a19c74a7d2a7f9"
uuid = "dee08c22-ab7f-5625-9660-a9af2021b33f"
version = "0.3.2"

[[Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[Rotations]]
deps = ["LinearAlgebra", "Quaternions", "Random", "StaticArrays", "Statistics"]
git-tree-sha1 = "3177100077c68060d63dd71aec209373c3ec339b"
uuid = "6038ab10-8711-5258-84ad-4b1120ba62dc"
version = "1.3.1"

[[SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[SharedArrays]]
deps = ["Distributed", "Mmap", "Random", "Serialization"]
uuid = "1a1011a3-84de-559e-8e89-a11a2f7dc383"

[[ShortCodes]]
deps = ["Base64", "CodecZlib", "HTTP", "JSON3", "Memoize", "UUIDs"]
git-tree-sha1 = "0fcc38215160e0a964e9b0f0c25dcca3b2112ad1"
uuid = "f62ebe17-55c5-4640-972f-b59c0dd11ccf"
version = "0.3.3"

[[SimpleTraits]]
deps = ["InteractiveUtils", "MacroTools"]
git-tree-sha1 = "5d7e3f4e11935503d3ecaf7186eac40602e7d231"
uuid = "699a6c99-e7fa-54fc-8d76-47d257e15c1d"
version = "0.9.4"

[[SimpleWeightedGraphs]]
deps = ["Graphs", "LinearAlgebra", "Markdown", "SparseArrays", "Test"]
git-tree-sha1 = "a6f404cc44d3d3b28c793ec0eb59af709d827e4e"
uuid = "47aef6b3-ad0c-573a-a1e2-d07658019622"
version = "1.2.1"

[[Sixel]]
deps = ["Dates", "FileIO", "ImageCore", "IndirectArrays", "OffsetArrays", "REPL", "libsixel_jll"]
git-tree-sha1 = "8fb59825be681d451c246a795117f317ecbcaa28"
uuid = "45858cf5-a6b0-47a3-bbea-62219f50df47"
version = "0.1.2"

[[Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "b3363d7460f7d098ca0912c69b082f75625d7508"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.0.1"

[[SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[SpecialFunctions]]
deps = ["ChainRulesCore", "IrrationalConstants", "LogExpFunctions", "OpenLibm_jll", "OpenSpecFun_jll"]
git-tree-sha1 = "d75bda01f8c31ebb72df80a46c88b25d1c79c56d"
uuid = "276daf66-3868-5448-9aa4-cd146d93841b"
version = "2.1.7"

[[StackViews]]
deps = ["OffsetArrays"]
git-tree-sha1 = "46e589465204cd0c08b4bd97385e4fa79a0c770c"
uuid = "cae243ae-269e-4f55-b966-ac2d0dc13c15"
version = "0.1.1"

[[StaticArrays]]
deps = ["LinearAlgebra", "Random", "StaticArraysCore", "Statistics"]
git-tree-sha1 = "dfec37b90740e3b9aa5dc2613892a3fc155c3b42"
uuid = "90137ffa-7385-5640-81b9-e52037218182"
version = "1.5.6"

[[StaticArraysCore]]
git-tree-sha1 = "ec2bd695e905a3c755b33026954b119ea17f2d22"
uuid = "1e83bf80-4336-4d27-bf5d-d5a4f845583c"
version = "1.3.0"

[[Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[StatsAPI]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f9af7f195fb13589dd2e2d57fdb401717d2eb1f6"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.5.0"

[[StatsBase]]
deps = ["DataAPI", "DataStructures", "LinearAlgebra", "LogExpFunctions", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "d1bf48bfcc554a3761a133fe3a9bb01488e06916"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.33.21"

[[StructTypes]]
deps = ["Dates", "UUIDs"]
git-tree-sha1 = "ca4bccb03acf9faaf4137a9abc1881ed1841aa70"
uuid = "856f2bd8-1eba-4b0a-8007-ebc267875bd4"
version = "1.10.0"

[[TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[TensorCore]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "1feb45f88d133a655e001435632f019a9a1bcdb6"
uuid = "62fd8b95-f654-4bbd-a8a5-9c27f68ccd50"
version = "0.1.1"

[[Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[TiffImages]]
deps = ["ColorTypes", "DataStructures", "DocStringExtensions", "FileIO", "FixedPointNumbers", "IndirectArrays", "Inflate", "Mmap", "OffsetArrays", "PkgVersion", "ProgressMeter", "UUIDs"]
git-tree-sha1 = "70e6d2da9210371c927176cb7a56d41ef1260db7"
uuid = "731e570b-9d59-4bfa-96dc-6df516fadf69"
version = "0.6.1"

[[TiledIteration]]
deps = ["OffsetArrays"]
git-tree-sha1 = "5683455224ba92ef59db72d10690690f4a8dc297"
uuid = "06e1c1a7-607b-532d-9fad-de7d9aa2abac"
version = "0.3.1"

[[TranscodingStreams]]
deps = ["Random", "Test"]
git-tree-sha1 = "8a75929dcd3c38611db2f8d08546decb514fcadf"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.9.9"

[[Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[URIs]]
git-tree-sha1 = "e59ecc5a41b000fa94423a578d29290c7266fc10"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.4.0"

[[UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[UnPack]]
git-tree-sha1 = "387c1f73762231e86e0c9c5443ce3b4a0a9a0c2b"
uuid = "3a884ed6-31ef-47d7-9d2a-63182c4928ed"
version = "1.0.2"

[[Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[WoodburyMatrices]]
deps = ["LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "de67fa59e33ad156a590055375a30b23c40299d3"
uuid = "efce3f68-66dc-5838-9240-27a6d6f5f9b6"
version = "0.5.5"

[[Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[Zstd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e45044cd873ded54b6a5bac0eb5c971392cf1927"
uuid = "3161d3a3-bdf6-5164-811a-617609db77b4"
version = "1.5.2+0"

[[libpng_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "94d180a6d2b5e55e447e2d27a29ed04fe79eb30c"
uuid = "b53b4c65-9356-5827-b1ea-8c7a1a84506f"
version = "1.6.38+0"

[[libsixel_jll]]
deps = ["Artifacts", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Pkg", "libpng_jll"]
git-tree-sha1 = "d4f63314c8aa1e48cd22aa0c17ed76cd1ae48c3c"
uuid = "075b6546-f08a-558a-be8f-8157d0f608a5"
version = "1.10.3+0"

[[nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╟─136f891c-3d4d-405b-bbbc-d1993f35e3b2
# ╟─35d7c122-0131-4968-89ad-13c7c2b9990b
# ╟─91cb4dfd-f1fa-47b5-9949-52c926612753
# ╟─60eee930-5f8a-432c-8061-22ca98b38f56
# ╠═409d6b53-5eef-4597-a81c-d4540bea59fd
# ╠═27cf2406-6b34-4f9d-addd-fd4335d9e0c8
# ╟─3500465d-129b-4f94-bcb3-49bd00e8ce0d
# ╠═b70904dd-9153-4a65-aa47-a462c058d59a
# ╠═27894e62-25b6-4661-9031-e2cbe435d0e8
# ╠═fabe2aa0-0eb8-4b97-b292-13b3f5d1e033
# ╟─767eb808-686b-4a36-be54-26f691cb04c9
# ╟─20cb07f0-02e9-45f4-9e30-936c36789146
# ╠═7101cc06-78b7-4ab3-a404-5328f5847c5b
# ╠═e7024cc7-2674-4a14-b5b0-b7feb3a53e59
# ╠═039bb55c-3ac1-4bb2-a3bb-5087a512c737
# ╟─ac1291ef-c4d5-473e-bb0f-f7b2907b33fd
# ╠═1e9e0992-ff27-44fa-b639-492b3bca055b
# ╟─b23adf8c-2b26-4f47-9564-06a6016688c2
# ╠═5300a2b6-aa48-44f4-a776-fdf8cd08d607
# ╟─6f93d38a-6a44-4cf1-9bdc-a4672157a6d6
# ╠═19bf6c5a-e98a-4ee1-b005-149a2b1cd014
# ╟─4611b5a0-5234-4f5f-94f7-7e8622faa975
# ╟─eca81518-8710-4623-a048-3a64d1967f7b
# ╠═60f123f4-879c-44e4-b55b-c85d152e2a3d
# ╠═3abb2243-3ecb-4565-a97b-b111933749da
# ╟─4a0356d2-6203-4b3f-b404-01b9bc5c5d28
# ╟─7fd1544d-37d4-459a-a8b0-3f2789fa5ba4
# ╠═117b0aff-22f6-412c-b729-3306d5993f54
# ╠═5e62c091-9844-44a8-8508-097e1e2701c1
# ╠═77e55509-df3b-4210-b0e1-f5424ccefeb5
# ╟─7dda5d30-5f48-40dc-9e14-d10cd30a289e
# ╠═479854c9-7b0c-4568-aeb5-0ce5c3b1b111
# ╠═8e871ee3-7481-4551-b430-8fb5e0877286
# ╟─639c689b-aa34-422c-be0c-78c2f810352c
# ╠═eb82596b-dbad-48f9-b67c-b645493e4960
# ╟─0aff98ed-2d5d-4f4c-898b-ed5426086061
# ╠═3aedb8ae-9cf0-44f5-8df8-199441ca2c31
# ╠═3ca8a335-cdca-4c38-978a-304477b2efba
# ╠═3f2b4cc2-6fc5-49c4-91ec-b700d9db0e9d
# ╟─513cd356-8419-4a75-a35f-d722d8215317
# ╟─e379b58a-f212-4bc1-9984-4ebf51472d32
# ╠═7cf124cf-8171-4de8-96cd-312015368e6f
# ╠═2a0e50cf-bf32-4864-8baf-0ad5e0520a30
# ╠═a4074903-d68e-43d7-bdc6-48e1abe09bfd
# ╟─c18cab53-ab61-49f2-9506-30fafbff2b25
# ╟─102ffc64-c58d-4eba-a0b5-55436f000c20
# ╠═f34193be-a6c4-4d20-a2f0-ed5a7ffdfb06
# ╠═502a6d37-f5c3-4640-afd3-df3cb03caa79
# ╠═d14359bb-2b6b-4537-bbf2-ad28bd92fc8d
# ╠═60b20897-7c64-4851-8f9c-b86ad09e7daf
# ╟─4593bdb2-7dca-4482-8d0d-4e6cd7ec6b1a
# ╠═a386a26b-a5ea-4c8f-8e36-158a66ea2ac9
# ╠═a3d3b36b-fcf4-4f5f-9250-580bc0b3d94d
# ╟─f506849e-cee1-443b-b7b2-376bc3cbe298
# ╠═7c6b91c0-42a9-4b5e-87f9-e4353560cf03
# ╠═4bd47342-f382-479b-aabe-c9308a6305a3
# ╟─fa63fbfb-1490-45c7-8718-3f59305d85fa
# ╠═2df295de-2ab2-4223-b4c7-dffddaabb00f
# ╠═b7b636d4-0431-4696-bdd3-952ff095ffa9
# ╠═faa2cd2b-f7bf-4bd0-9bcc-e2fc7cd114df
# ╟─b2c9c5ad-b049-4938-b7db-ca4770966312
# ╠═4e6f4287-a868-483e-ace4-6de1d6fa1be1
# ╠═a6da9e1f-8aa0-4776-85e8-52e04d819b90
# ╟─dacc49fb-6cb8-4c4e-9445-7ba3a14ef4c8
# ╠═825693f6-5d42-420e-87c9-8d57882073dd
# ╠═d640d377-7c71-410f-8400-992eb4f2b742
# ╠═281c116a-8e1e-4f8a-9c0a-5e60f41097b0
# ╠═fbde7bdd-3491-4df7-a592-3dc37a918cda
# ╟─4ff2f720-1b09-497f-b218-32bce70904ec
# ╟─5a2f792f-2ded-41c4-a7d4-a2018d509af2
# ╠═5f88414a-1b80-4ac6-9def-5e689233baa3
# ╟─b6473b30-f369-48ee-9cb2-565ddfba498b
# ╠═f4efe128-58c6-4b85-998c-9ae7cba5cc5b
# ╠═546933d2-a63b-4b58-b1f9-987edf512fb2
# ╠═9159c19d-38ed-4a50-b6a3-0f8ceb771a58
# ╠═a27eb5d9-d940-4aef-95de-5e344932d67d
# ╠═6d84bc29-7ba0-458d-9867-4efe281988b9
# ╠═c79eee20-181e-4cd5-b7ed-9fe7494630a5
# ╠═0a39a923-303e-4412-8170-5b8c3aa4ba69
# ╟─83dbc493-e2d8-4b8e-9b1a-9233fee15f9c
# ╠═b6706d85-69b2-4788-a94b-c8d3b5d47cae
# ╟─e8336d08-c6ad-4f03-87b7-5a4bcc0199ae
# ╠═2be2192b-04f9-4180-8d71-542a587fc712
# ╟─e935f3d6-f7ef-4d25-9e1a-4c523c85ce53
# ╠═1d4baab6-1c2b-4380-85c7-8629e0462504
# ╟─bc4142f3-68e8-4b2a-9b0f-81c0a98646c8
# ╠═9058db93-980f-4f35-83ad-8bc0ecaa8102
# ╟─76936ba7-20e4-469f-bc26-e0dee33f05b5
# ╠═0f8f3d0c-c563-4c3a-9dee-3159aefa45fb
# ╟─e67d7f7b-00f6-4d0d-b881-e4fa48ec7b8b
# ╠═061ef310-1236-4d5a-8d6f-48ce571327e6
# ╟─71d10d8e-18b6-49ee-9865-4512da2f55ce
# ╠═e95cc9e3-1d8a-4c76-8352-d8827ff85367
# ╟─6287a0b1-afe0-4017-81da-59a3d146c794
# ╠═908545ee-43ad-4a49-b138-6944711272ae
# ╟─c93360dd-32d6-4ac1-949c-91f2f182d005
# ╠═3f36e8de-60f5-4959-af80-a44f5ae13891
# ╠═3db4921f-2d55-45e0-b8d5-584246d57053
# ╟─2d3eecc6-4429-4d95-be40-e657b2dd47ab
# ╟─c8b8b55c-d9b0-478d-b15b-acc8782fe549
# ╠═c7ce4d56-d977-45cf-946c-231772aed4e6
# ╠═8fcf2530-0ecd-45b2-afcb-6e176f5aff4e
# ╟─288be5a3-f674-449f-8074-dbe39eadb693
# ╠═cb8b1304-857e-4b66-80fc-b85b98480722
# ╟─9317d2df-52be-46f2-801f-4446eb97551e
# ╠═d1bea374-6f4b-4d15-a680-76f314f70561
# ╟─bbbe9826-c17d-4431-91c5-1faee7339d66
# ╠═0b8a9a05-8287-43c7-85cc-287d83b77414
# ╟─1e1969ad-8ff1-4e67-a6d0-af7213642910
# ╠═4229c9ee-5f7d-47ac-89ff-42a79dfb32a6
# ╠═13e7efb3-6b02-4c07-bee6-4a8fd022382b
# ╟─bf94313c-98c8-4f69-8ac6-d74a486164c0
# ╟─d6292883-a946-4076-830a-fb6f280614bd
# ╠═48d0f901-e9c1-4597-9477-cefb678eb4ae
# ╠═6c892bc7-1328-4918-9d88-9c3576c73fd4
# ╠═278d9735-6178-4ae9-9b83-e773dba25d3a
# ╠═a4d3e189-be2d-42a8-a22f-43e2be5ff7d1
# ╠═8700d5b6-34d7-4c5b-b1d3-d5720ffd465e
# ╠═4d7ce3b7-5d5d-476e-90d7-1fff5a6a9e03
# ╟─166be534-09e9-4a28-95ce-811809146227
# ╟─31c27914-72eb-420b-bc8a-db25f3362115
# ╠═23fb2d09-31d3-495d-9cda-f23b1a1eaab7
# ╟─e5a14fd8-6b90-41a0-8693-23b5c03d7a0a
# ╠═925b1d6f-23f0-4477-87a3-cfa55a2fa796
# ╟─39bc0c2e-45b4-44d6-98cd-8d1f33c19ab9
# ╠═2aff2bb4-04f6-4b7e-b3be-3201138ae75c
# ╟─93b7d841-a579-4faa-8f5b-1362fc793d0e
# ╠═70ffd325-c929-4184-b875-89ad31b2d165
# ╟─0b238fe6-3dbc-4e71-910f-ff3f937000fe
# ╠═54e56c1e-466d-4dfc-ad9e-4782af73a2ae
# ╟─40155044-cc67-42b4-b908-57e39f548ca4
# ╠═b1796b9a-44aa-41de-a883-40dbdb152d0e
# ╠═03246c6d-730c-4aed-97fe-3a44109de126
# ╠═bd710ffd-da86-42b2-8b79-b305f0751086
# ╟─4265adc7-67ce-481c-b222-b8550c27c755
# ╠═0e26af96-6f62-47f4-a959-aea471659f8b
# ╟─d9e445c5-846c-48dd-adba-d667cc53bb83
# ╠═3f54d4e6-d61a-49e5-b400-f2a2aacd6e36
# ╠═78d2d4f3-8411-4514-8ac1-3a195de44705
# ╠═33569177-08b2-4876-86d7-c006d1ae9bcd
# ╟─6aa73d58-70df-4129-b311-457dc25745bc
# ╠═f0024759-463a-49d4-b5bd-593eb066003b
# ╟─738c28c8-92f4-4048-a937-af35d3d0308d
# ╠═ccbbb026-34aa-43dc-9ab4-f0944ff50161
# ╟─870a00d3-7662-4234-8c39-a58d6028821a
# ╠═d7b4cf10-79f4-4e27-89bb-1f374ad19234
# ╟─3da9b716-2a61-4c4d-a4ff-372f8f0f971e
# ╠═ef5e066d-6656-45ec-a53f-54ab26b5e240
# ╟─b2fc6361-d31f-43ae-a1f4-ad3946e247e5
# ╠═baf6761f-9537-4e89-bf7a-ecfc5cbe94bc
# ╟─c7ed170a-fd0e-4381-91d7-369b9b620adf
# ╠═06156f98-35c2-4e24-8163-1db0596a97b1
# ╟─096249e8-77dc-4d7b-b8ef-a77288b58b70
# ╠═fce885c4-de9e-4e0d-a506-a7d8eba8906c
# ╟─b3040278-e80f-4069-962a-96e8760fe757
# ╟─757af62e-718a-4164-929e-7809b935b826
# ╠═702f6a73-4934-45b4-beb9-09296597448c
# ╠═c40a5ea1-9f22-421d-b74d-252c876fe416
# ╟─bf0fa7ad-95f3-4414-a99d-95f3b0663271
# ╠═1929f54a-f609-483b-a643-d043d4c428b9
# ╠═fab9267b-c786-42ff-9217-cd86804443a6
# ╟─3c1163ce-cf72-4d65-a14b-86d2b8625edb
# ╠═cae0e4d3-610b-4c74-8566-5cdd113af6bd
# ╠═9692e292-a1c8-4908-9735-07edc5ea7546
# ╠═672f07f7-a350-4cbb-b069-45ddaf03ba2b
# ╠═9084501f-16c3-4b16-89e9-42a935bb5d64
# ╟─eacb9530-cd15-4145-88dc-2e1a047c1a91
# ╠═1447744b-e3cc-4f02-87f0-f4e0dbb43449
# ╟─a52eaac4-18d6-4171-abff-d51d02f4f821
# ╠═b2a80cd1-4961-4450-87ff-904da0048d7d
# ╟─7d335be5-21ad-40ea-9a82-b68e6f354c2e
# ╠═71d567fa-948b-472b-8f7a-34c7bc54cc6a
# ╠═22401b7d-049b-4ff6-af64-5e87d9503b86
# ╟─7142bcc7-786b-4a60-af1f-65707ea463f1
# ╠═1ed3c7bc-b9fa-4c7a-b6c5-caf12ea20af7
# ╠═525288ac-9f75-4b4c-99e7-95269a4a5264
# ╟─8c557a15-5783-4622-b3f2-7aa480a705e1
# ╟─607caa2b-cb3a-4f55-bd66-b61046c9f5a1
# ╠═c665d6cb-552e-4127-92d0-8ab46e5af338
# ╟─6a097a6b-79b4-41ef-8e68-39eec33c4b8a
# ╠═856c31f0-d4e7-453e-bfc5-0a26ca79bc33
# ╟─05a817a6-caa8-4c6e-9d26-332e68747d17
# ╠═e08c1eb6-553a-48ad-b76a-7540f0b27527
# ╟─bab168d4-9b2f-4253-a6f6-30947b01624c
# ╠═24d003c6-3172-4372-b6e7-651c528a853f
# ╟─e70f473b-fc12-4858-94e7-66360e1d59ce
# ╠═d443f9bf-751e-4501-b511-474f3c6b14e2
# ╟─0084c065-db52-4cd6-a0ef-b724bd39c2e4
# ╠═b2a30209-db8d-46e6-aa54-b2499ae7a63f
# ╟─589bbd02-eb07-4a7c-a2d2-b08817770e98
# ╠═e46fe9e4-0e0d-41e8-9bc9-63c20c5bdeaa
# ╟─d18bca39-1930-4a25-8880-71130874801e
# ╠═1f954c2f-0e86-41b7-9079-670e3aa19d6c
# ╟─7882e1cc-68ea-467f-9377-77e368ce4967
# ╠═81751a80-5622-4b58-9dc9-249d8f10a965
# ╟─5730232b-295c-4175-9013-df2fc3cc03ab
# ╠═222d70e2-008d-443b-b2c0-5cfeca41601f
# ╟─b8adc2fa-c54e-429d-a691-84749026ac7a
# ╠═938b45fd-4254-419d-a26c-f8a0f680a6c3
# ╠═aeb30d0c-493f-45dc-b270-46888860c294
# ╠═51074833-d208-4dfe-9c33-4a48cc511da7
# ╟─ec1ddbdc-c635-4b7b-b505-504eabf99de5
# ╠═9d16d156-1927-4a6c-b48c-0098b3580ad0
# ╠═9a55def6-3857-4327-9d98-1de4087c07ff
# ╠═e68316c6-a048-4ca3-9796-0e27e45aa7dc
# ╟─6eabcd6a-0a68-4230-b697-cde11084db6f
# ╠═dbc5ace3-19a2-4ba4-8de9-99eee075be46
# ╠═7b2ab6c0-a556-4afa-a345-0808a12fd105
# ╠═ef0cbc5c-0881-4e90-9973-644bf6d53dfa
# ╟─013c96db-e35f-443c-829f-65fb0db68fcf
# ╠═a3ab17d0-d8e2-43a0-ba87-4bb4ca1d7c29
# ╠═b6f97eaa-2493-4cfa-9fda-f6f2ff945332
# ╠═c5c85948-cb5b-4ff6-a1e1-494f021ae4b3
# ╠═e71e3a66-b137-42b2-a900-ebe7df04730a
# ╟─c71326de-efd7-4472-b8ed-6fd7dbf9999b
# ╟─1b14d084-17fc-4dd3-af8b-a4d6d682ad20
# ╠═09350c1e-0c31-470d-92e7-1c6fe3a61e12
# ╠═e1099345-c0a6-45d1-bd3a-b52ce5e28e85
# ╠═08b6ed32-2791-441f-b06d-507c50f28b77
# ╟─8a22b589-cd11-4b02-9b25-bad6dd6948e5
# ╠═5fb976c6-ebac-409c-95b1-7eadfc529271
# ╠═436b4af5-41f6-4785-9095-c71f0115bf33
# ╠═9153530c-7538-4adb-88c8-994e349f15d4
# ╟─f25ce37f-24cd-4038-9f07-6805db219a15
# ╠═b42f4276-da61-4108-859d-e3a87e158f9e
# ╠═9b79df21-54ac-4869-9020-9af29f942bd9
# ╟─e1fe12e6-4ed5-4eee-8ccc-6e8e5238b479
# ╟─3df96e40-b96d-44df-9606-688b645268d8
# ╠═d18632f6-a392-40e1-ba56-d6bce96e39f3
# ╟─42a21faf-0abc-4934-a107-2a26accacc59
# ╠═f97420e7-0e07-449e-a141-49c9d1129208
# ╟─055e07e6-a4cd-4493-b7ee-3e6de50bda6d
# ╠═16565795-f926-4bd0-806f-c7b7cfebbc34
# ╠═46233fd6-c58f-4c22-af76-f93e07dcc2ed
# ╟─e399523f-3f59-45eb-9386-60d8a0c4d69c
# ╠═9899abf4-d205-4c4b-baf0-21e1c3bed648
# ╟─7e8c3bfc-31fe-459f-a55b-5da5306949ed
# ╟─9313d68a-add9-42cc-9b9d-03dea7d731f4
# ╠═d1ec2da1-ef7c-4e2f-a3e7-a463fd159fd2
# ╠═63a7c1fb-3255-494b-b886-ddb409c3a71d
# ╠═31eae950-e6bf-4eed-bb63-1bebdac10743
# ╟─3c320159-c339-475f-bfc0-cc032ca15060
# ╠═8d1f6881-f98e-4573-a9c2-1fdcbac8b130
# ╠═10c90369-cbeb-4b1c-a7c0-24686d4e2f15
# ╟─d914e9f0-4d0d-470e-80cc-ab98293df801
# ╠═79e778d0-fe44-4421-817b-ead071654bf0
# ╟─6440087d-35aa-46ee-b041-9d12d6f855ef
# ╠═f2961941-560c-439a-bd79-1710dcee7b65
# ╠═503a4007-a6b1-40bd-87d0-93c7d4d0d666
# ╟─1a5d1e21-95b0-4692-8eb4-df3900bc99ab
# ╠═6aa74f46-e2b4-4ef1-8586-918c80ff7e6b
# ╟─d949e1d0-158a-4f23-b826-18905a3a2af1
# ╟─30d92967-7900-451b-9c9e-b94ea37bc854
# ╠═83e088bd-be32-46e6-ab5b-b6b4bed3f4e5
# ╠═86a75e2d-25ba-4e38-b3f5-6c798de27ff9
# ╠═3a701fad-d1c7-4d22-a06c-cab65d22d403
# ╟─730d4658-3245-429d-a2c9-5d6001073171
# ╠═56aee0c3-9f32-454c-a2b4-c9caf96da7fb
# ╠═2647277a-3ef6-4b5d-b3c0-2ea003ee5f16
# ╟─361289a9-c14a-4cbd-a194-86d4b712a2ac
# ╠═d0f81a63-8730-471b-80a1-6b0176e92b1d
# ╟─06563760-21b1-44a4-b8d0-d23f079ec1f3
# ╠═bc81217f-bd5f-417d-ac92-51b05a26f3d9
# ╠═fef1e580-9dcb-4a8b-8301-9eb4c411fd6f
# ╟─0907efbd-53e4-4294-9bfc-7d0465f0ce4c
# ╟─681f4dcd-7e3d-45ea-b21b-3f6cc7bc0e13
# ╠═2d8b62cb-fa09-4de7-b3ac-0d687a9a027b
# ╟─d30aeb27-4661-4425-bd96-32fc30f4a018
# ╠═d38fcc2a-53cf-40ed-ba41-15e5c88af112
# ╠═73a52614-4cf5-4be2-a91f-a1d617a4d131
# ╟─a476de91-5234-42e3-a50e-ec8617d7a81f
# ╠═b8f77906-5e0a-4a4a-aca6-b0a0aa6e84cc
# ╟─c5da2d78-987c-4c79-87a5-b3ec474d0196
# ╠═a08857aa-ab3b-470c-9927-15d705f811c6
# ╟─ee642408-2eed-464b-a178-6a4ce2d2f305
# ╟─9ea0cd46-56ff-4c3c-984b-854cfeb421ba
# ╟─9c41afd5-ea9a-41d7-895d-6077306a9f0d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
