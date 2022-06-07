### A Pluto.jl notebook ###
# v0.19.8

using Markdown
using InteractiveUtils

# ╔═╡ c7b74be3-1cb3-4a36-9912-51896ca4d366
using QuranTree

# ╔═╡ 3ce39a60-9897-4641-84a1-66b223ce65b5
begin
	using Dates
	using HypertextLiteral: @htl
	using PlutoUI
	using ShortCodes
	TableOfContents(title="Content")	
end

# ╔═╡ 8e608a5e-7156-410f-839e-67b2679168de
@htl("""
<div style="text-align: right;">
<i>Chapter 7: Introduction to QuranTree.jl</i>
<br/><i>last updated: $(Dates.now())</i></div>
""")

# ╔═╡ 8a015ed0-9efd-4b1f-b60b-ca374788734e
md"""
# Introduction to QuranTree.jl

In Islamic Studies, there are two main scriptures that are heavily studied in the discipline, the Holy Quran and the Hadith. Computationally, these books needs to be presented in digital form. In Julia, the Quranic Arabic Corpus is provided by the [_QuranTree.jl_](https://alstat.github.io/QuranTree.jl/stable/) library, which we are going to explore in this chapter.
"""

# ╔═╡ 93d8c791-08c8-41ec-aad0-b235987da09f
md"""
## Installation

The [_QuranTree.jl_](https://alstat.github.io/QuranTree.jl/stable/) can be installed in Julia as follows:

```julia
using Pkg
Pkg.add("QuranTree")
```
"""

# ╔═╡ 73ac44ac-9c03-458f-9bcf-92e9284fd2ef
md"""
## Loading the Quran Corpus

The corpus can be loaded as follows, we first load the package:
"""

# ╔═╡ 4ba98b09-5d43-4989-9518-7ab8f01fe818
md"""
Then the data is loaded as follows:
"""

# ╔═╡ 45af1f0b-3465-42ee-b90a-1e088e61c895
crps, tnzl = load(QuranData())

# ╔═╡ 02fa30a6-cb77-405e-b947-e938255f0d3a
md"""
The `load(QuranData())` returns a tuple of Quranic Arabic Corpus by Kais Dukes and the Tanzil data by the Tanzil.net. The above codes therefore assigns Duke's corpus to `crps` and the Tanzil data to `tnzl` variable.
"""

# ╔═╡ 1dad070e-3997-4f7d-a896-ffdbb2bd8d57
md"""
Both corpuses above are in their raw text form, and needs further processing for it to be usable for analyses. In particular, we need to convert this text files to tabular form using the `table` function.
"""

# ╔═╡ cbc8d54e-e638-4793-8086-b67e9cd43f95
crpsdata = table(crps)

# ╔═╡ ac1494e8-41e6-4fd7-8b2d-53cd527817e3
tnzldata = table(tnzl)

# ╔═╡ e35e4123-5479-44c8-be13-68bae5e17336
md"""
## Indexing Qur'an's Corpuses

To index the corpuses in its tabular form, we follow the following QuranTree.jl's usage:

```julia
# for Duke's Quranic Arabic Corpus
crpsdata[<surah>][<verses>][<words>][<parts>]

# for Tanzil Data
tnzldata[<surah>][<verses>]
```
"""

# ╔═╡ f33effb1-1432-4dc9-b5de-cbf5fd13ff54
md"""
So, to index chapter 9 verse 2, we do the following:
"""

# ╔═╡ 9aef4589-857d-4987-a88b-efbff8a4f798
crpsdata[9][2]

# ╔═╡ 284e0258-c68d-4c06-aa97-bf9ddcfece86
tnzldata[9][2]

# ╔═╡ dc5ee59d-5712-403f-a4b8-7e8f5008ac0d
md"""
## Extracting Verses

To extract the verses, _QuranTree.jl_ provides the `verses` function. So that the verses for chapter 1 are extracted as follows:
"""

# ╔═╡ c1799b89-0150-40da-ba2a-ab15fb89dc9e
verses(crpsdata[1])

# ╔═╡ 16b0e967-a50a-4a86-931a-41e4f9fbdf83
verses(tnzldata[1])

# ╔═╡ e1618bc7-1f99-4f68-9ae6-60f5dd3c013c
md"""
!!! note
	It should be noted that the `verses` function always returns an array.
"""

# ╔═╡ 2175c4f1-8191-449a-b183-14cef6591d4e
md"""
## Qur'an's Morphological Features

To extract the morphological features of a word or part of a word of the Qur'an, we use Duke's Quranic corpus.
"""

# ╔═╡ 99a4882e-af7b-4dce-aaf7-39d3f7b6e166
@htl("""
For example, to get the morphological feature of surah 1, verse 1, and first part of word 1 (the <span class="ar-sch">بِسْمِ</span>)
""")

# ╔═╡ 6f15c8c1-4253-4d6b-9d61-56684f3af1d2
bi = crpsdata[1][1][1][1].data[!, :features]

# ╔═╡ c663bfed-9ea7-4cc9-8d57-90bee667769d
md"We can then parse this as a `QuranFeatures` object:"

# ╔═╡ 97b42d83-f2bf-4420-8a9d-14046c8f34d0
bi_feat = parse(QuranFeatures, bi[1])

# ╔═╡ d5249e6d-4e24-4354-8e0c-31803b945f3e
@htl("If we look at the second part of the word <span class='ar-sch'>بِسْمِ</span>, we will have the following:")

# ╔═╡ dcbd63be-3393-4acd-b4b1-66728ef5c885
somi = crpsdata[1][1][1][2].data[!, :features]

# ╔═╡ fc478995-b3bc-42aa-9665-2e20e5c78214
somi_feat = parse(QuranFeatures, somi[1])

# ╔═╡ 16f5462c-ff5c-4a79-87e8-d405e60e7837
md"""
## QuranTree.jl with DataFrames.jl

The type of `crpsdata` above is `QuranTree.CorpusData` which is a thin wrapper over [_DataFrames.jl's_](a) `DataFrame`. Therefore, advanced data manipulation is possible using the [_DataFrames.jl_](a) APIs. To access the corresponding DataFrame, we simply use the field name `.data`. We can see the difference below:
"""

# ╔═╡ 45683ccc-660d-4675-887a-df3ff3239a1f
crpsdata

# ╔═╡ acafed89-10fd-4dc2-96d0-e63d52bae4aa
crpsdata.data

# ╔═╡ 992b8160-472a-4309-a2f2-1dd2f8a95781
md"[_Pluto.jl_](a) has proper styling for displaying DataFrames objects. For `tnzldata` the DataFrame is extracted below:"

# ╔═╡ 1288b076-ccf8-4f85-9570-bd12f34a54b5
tnzldata.data

# ╔═╡ 1fa4d02e-8ec2-40f4-b1f1-c60d8fde4c7d
@htl("""
<title>Introduction to QuranTree.jl</title>
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

</style>
<hr/>
""")

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Dates = "ade2ca70-3891-5945-98fb-dc099432e06a"
HypertextLiteral = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
QuranTree = "f647ab69-6f05-4d64-883f-59d0fbe08d2b"
ShortCodes = "f62ebe17-55c5-4640-972f-b59c0dd11ccf"

[compat]
HypertextLiteral = "~0.9.4"
PlutoUI = "~0.7.39"
QuranTree = "~0.2.0"
ShortCodes = "~0.3.3"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

[[AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[CodecZlib]]
deps = ["TranscodingStreams", "Zlib_jll"]
git-tree-sha1 = "ded953804d019afa9a3f98981d99b33e3db7b6da"
uuid = "944b1d66-785c-5afd-91f1-9de20f533193"
version = "0.7.0"

[[ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "0f4e115f6f34bbe43c19751c90a38b2f380637b9"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.3"

[[Compat]]
deps = ["Base64", "Dates", "DelimitedFiles", "Distributed", "InteractiveUtils", "LibGit2", "Libdl", "LinearAlgebra", "Markdown", "Mmap", "Pkg", "Printf", "REPL", "Random", "SHA", "Serialization", "SharedArrays", "Sockets", "SparseArrays", "Statistics", "Test", "UUIDs", "Unicode"]
git-tree-sha1 = "9be8be1d8a6f44b96482c8af52238ea7987da3e3"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "3.45.0"

[[Crayons]]
git-tree-sha1 = "249fe38abf76d48563e2f4556bebd215aa317e15"
uuid = "a8cc5b0e-0ffa-5ad4-8c14-923d3ee1735f"
version = "4.1.1"

[[DataAPI]]
git-tree-sha1 = "fb5f5316dd3fd4c5e7c30a24d50643b73e37cd40"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.10.0"

[[DataFrames]]
deps = ["Compat", "DataAPI", "Future", "InvertedIndices", "IteratorInterfaceExtensions", "LinearAlgebra", "Markdown", "Missings", "PooledArrays", "PrettyTables", "Printf", "REPL", "Reexport", "SortingAlgorithms", "Statistics", "TableTraits", "Tables", "Unicode"]
git-tree-sha1 = "daa21eb85147f72e41f6352a57fccea377e310a9"
uuid = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
version = "1.3.4"

[[DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "d1fff3a548102f48987a52a2e0d114fa97d730f0"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.13"

[[DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[DelimitedFiles]]
deps = ["Mmap"]
uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab"

[[Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

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

[[IniFile]]
git-tree-sha1 = "f550e6e32074c939295eb5ea6de31849ac2c9625"
uuid = "83e8ac13-25f8-5344-8a64-a9f2b223428f"
version = "0.5.1"

[[InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[InvertedIndices]]
git-tree-sha1 = "bee5f1ef5bf65df56bdd2e40447590b272a5471f"
uuid = "41ab1584-1d38-5bbf-9106-f11c6c58b48f"
version = "1.1.0"

[[IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

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

[[LinearAlgebra]]
deps = ["Libdl"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "3d3e902b31198a27340d0bf00d6ac452866021cf"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.9"

[[Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[MbedTLS]]
deps = ["Dates", "MbedTLS_jll", "Random", "Sockets"]
git-tree-sha1 = "1c38e51c3d08ef2278062ebceade0e46cefc96fe"
uuid = "739be429-bea8-5141-9913-cc70e7f3736d"
version = "1.0.3"

[[MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[Memoize]]
deps = ["MacroTools"]
git-tree-sha1 = "2b1dfcba103de714d31c033b5dacc2e4a12c7caa"
uuid = "c03570c3-d221-55d1-a50c-7939bbd78826"
version = "0.4.4"

[[Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "bf210ce90b6c9eed32d25dbcae1ebc565df2687f"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.0.2"

[[Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[OrderedCollections]]
git-tree-sha1 = "85f8e6578bf1f9ee0d11e7bb1b1456435479d47c"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.4.1"

[[Parsers]]
deps = ["Dates"]
git-tree-sha1 = "1285416549ccfcdf0c50d4997a94331e88d68413"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.3.1"

[[Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "8d1f54886b9037091edf146b517989fc4a09efec"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.39"

[[PooledArrays]]
deps = ["DataAPI", "Future"]
git-tree-sha1 = "a6062fe4063cdafe78f4a0a81cfffb89721b30e7"
uuid = "2dfb63ee-cc39-5dd5-95bd-886bf059d720"
version = "1.4.2"

[[PrettyTables]]
deps = ["Crayons", "Formatting", "Markdown", "Reexport", "Tables"]
git-tree-sha1 = "dfb54c4e414caa595a1f2ed759b160f5a3ddcba5"
uuid = "08abe8d2-0d0c-5749-adfa-8a2ac140af0d"
version = "1.3.1"

[[Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[QuranTree]]
deps = ["DataFrames", "ReadOnlyArrays", "Suppressor", "Yunir"]
git-tree-sha1 = "9401d2ba32c2aaf8c343d725d783fe96818e584d"
uuid = "f647ab69-6f05-4d64-883f-59d0fbe08d2b"
version = "0.2.0"

[[REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[Random]]
deps = ["Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[ReadOnlyArrays]]
deps = ["SparseArrays", "Test"]
git-tree-sha1 = "65f17072a35c2be7ac8941aeeae489013212e71f"
uuid = "988b38a3-91fc-5605-94a2-ee2116b3bd83"
version = "0.1.1"

[[Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

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

[[Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[StructTypes]]
deps = ["Dates", "UUIDs"]
git-tree-sha1 = "d24a825a95a6d98c385001212dc9020d609f2d4f"
uuid = "856f2bd8-1eba-4b0a-8007-ebc267875bd4"
version = "1.8.1"

[[Suppressor]]
git-tree-sha1 = "c6ed566db2fe3931292865b966d6d140b7ef32a9"
uuid = "fd094767-a336-5f1f-9728-57cf17d0bbfb"
version = "0.2.1"

[[TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "OrderedCollections", "TableTraits", "Test"]
git-tree-sha1 = "5ce79ce186cc678bbb5c5681ca3379d1ddae11a1"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.7.0"

[[Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[TranscodingStreams]]
deps = ["Random", "Test"]
git-tree-sha1 = "216b95ea110b5972db65aa90f88d8d89dcb8851c"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.9.6"

[[Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[URIs]]
git-tree-sha1 = "97bbe755a53fe859669cd907f2d96aee8d2c1355"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.3.0"

[[UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[Yunir]]
deps = ["Test"]
git-tree-sha1 = "4e699bf76804f991de4de7d83d03c823f4cf4320"
uuid = "6ba116df-6904-454d-b214-90038a8281a6"
version = "0.1.1"

[[Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╟─8e608a5e-7156-410f-839e-67b2679168de
# ╟─8a015ed0-9efd-4b1f-b60b-ca374788734e
# ╟─93d8c791-08c8-41ec-aad0-b235987da09f
# ╟─73ac44ac-9c03-458f-9bcf-92e9284fd2ef
# ╠═c7b74be3-1cb3-4a36-9912-51896ca4d366
# ╟─4ba98b09-5d43-4989-9518-7ab8f01fe818
# ╠═45af1f0b-3465-42ee-b90a-1e088e61c895
# ╟─02fa30a6-cb77-405e-b947-e938255f0d3a
# ╟─1dad070e-3997-4f7d-a896-ffdbb2bd8d57
# ╠═cbc8d54e-e638-4793-8086-b67e9cd43f95
# ╠═ac1494e8-41e6-4fd7-8b2d-53cd527817e3
# ╟─e35e4123-5479-44c8-be13-68bae5e17336
# ╟─f33effb1-1432-4dc9-b5de-cbf5fd13ff54
# ╠═9aef4589-857d-4987-a88b-efbff8a4f798
# ╠═284e0258-c68d-4c06-aa97-bf9ddcfece86
# ╟─dc5ee59d-5712-403f-a4b8-7e8f5008ac0d
# ╠═c1799b89-0150-40da-ba2a-ab15fb89dc9e
# ╠═16b0e967-a50a-4a86-931a-41e4f9fbdf83
# ╟─e1618bc7-1f99-4f68-9ae6-60f5dd3c013c
# ╟─2175c4f1-8191-449a-b183-14cef6591d4e
# ╟─99a4882e-af7b-4dce-aaf7-39d3f7b6e166
# ╠═6f15c8c1-4253-4d6b-9d61-56684f3af1d2
# ╟─c663bfed-9ea7-4cc9-8d57-90bee667769d
# ╠═97b42d83-f2bf-4420-8a9d-14046c8f34d0
# ╟─d5249e6d-4e24-4354-8e0c-31803b945f3e
# ╠═dcbd63be-3393-4acd-b4b1-66728ef5c885
# ╠═fc478995-b3bc-42aa-9665-2e20e5c78214
# ╟─16f5462c-ff5c-4a79-87e8-d405e60e7837
# ╠═45683ccc-660d-4675-887a-df3ff3239a1f
# ╠═acafed89-10fd-4dc2-96d0-e63d52bae4aa
# ╟─992b8160-472a-4309-a2f2-1dd2f8a95781
# ╠═1288b076-ccf8-4f85-9570-bd12f34a54b5
# ╟─1fa4d02e-8ec2-40f4-b1f1-c60d8fde4c7d
# ╠═3ce39a60-9897-4641-84a1-66b223ce65b5
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
