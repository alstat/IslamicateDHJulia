### A Pluto.jl notebook ###
# v0.19.8

using Markdown
using InteractiveUtils

# ╔═╡ 7b8bbe1e-6acc-4315-8540-dd0d535c0f2e
using Yunir

# ╔═╡ 06c7c34a-e6d6-11ec-1138-539d57107c04
begin
	using Dates
	using HypertextLiteral: @htl
	using PlutoUI
	using ShortCodes
	TableOfContents(title="Content")	
end

# ╔═╡ 11116806-2b3e-415c-869a-1bc298651b3a
@htl("""
<div style="text-align: right;">
<i>Chapter 8: Introduction to Yunir.jl</i>
<br/><i>last updated: $(Dates.now())</i></div>
""")

# ╔═╡ c2f05b07-0304-4a13-a313-c9fe56984cd5
md"""
# Introduction to Yunir.jl

Since the task of Digital Humanities often revolved around processing texts like digitalized scriptures, we will then need a Natural Language Processing toolkit. In Julia, we have Yunir.jl for Arabic NLP.
"""

# ╔═╡ 3b199179-e3d8-4b03-8030-ed96d204c568
md"""
## Installation

To install the Yunir.jl, run the following:

```julia
using Pkg
Pkg.add("Yunir")
```
"""

# ╔═╡ bcc099e5-3fbf-4e30-bd47-1b391e32b6ea
@htl("""
<h2>Transliteration</h2>

Among the tasks in ANLP, transliteration is done to map Arabic texts to Roman letters. So, to transliterate the <i>basmala</i>, <span class="ar-sch">بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ</span>, we use Yunir.jl's `encode` function as follows:
""")

# ╔═╡ 36b08d28-ecd4-4f69-a1cc-5b272f4f9724
basmala = "بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ"

# ╔═╡ 796d4a46-4879-41f5-916c-aa572a381c60
md"""
Yunir.jl uses [extended Buckwalter](https://corpus.quran.com/java/buckwalter.jsp) transliteration based on Quranic Arabic Corpus of Kais Dukes. Converting back to Arabic is done using the Yunir.jl's `arabic` function:
"""

# ╔═╡ 8a40f383-abe7-47b5-91e8-6dcfde985bef
md"""
## Dediacritization

Another task in ANLP is the dediacritization, this is possible using the `dediac` function.
"""

# ╔═╡ aee087d0-9135-4491-ab13-cb1d896482bc
dbasmala = dediac(basmala)

# ╔═╡ 4a52e875-0d78-484d-8be1-b2f23fbd61fc
encode(dbasmala)

# ╔═╡ 887dd81c-d80b-467a-87e2-7e2a80d5db94
md"""
## Normalization

Another task in ANLP is the normalization, this is possible using the `normalize` function.
"""

# ╔═╡ 44e21ff8-dc40-4d91-b6f7-74e557a68e44
normalize(dbasmala)

# ╔═╡ 74e4df59-330b-47fc-9a86-b9a02bf8dab8
normalize(basmala)

# ╔═╡ f73c4db1-46fb-4b4d-9fba-ff7f47b1af80
ebasmala = encode(basmala)

# ╔═╡ 398ae094-2434-4ceb-a1f0-d01b69191799
arabic(ebasmala)

# ╔═╡ 42a9c988-db85-49a7-b70b-0537102ca360
md"""
## Ortographic Analysis

Another interest might be in the analysis of the Orthography of the letters of the texts, this is possible by parsing the characters of the input Arabic texts as orthography.
"""

# ╔═╡ 1b9f3f21-afe9-4d2a-8ef6-c26a92f9cb6e
md"""To do this, we first `tokenize` the input texts:"""

# ╔═╡ 382998c5-14e2-4ed2-8a3f-92308d21779b
basmala_tokens = tokenize(basmala)

# ╔═╡ e6b91ad8-6e6e-4131-bd42-0d821bd2544b
md"""
### Vocals

To extract the vocals of the Orthography, we run the following:
"""

# ╔═╡ 518ac5e0-0376-4885-abb3-2794b91da7d1
bismi = parse(Orthography, basmala_tokens[1])

# ╔═╡ 4ffffce8-39d8-4460-bdc7-e5c8f91690db
vocals(bismi)

# ╔═╡ 3ce7f8a5-2a8a-4081-951b-6b1f127053cc
md"""
### Numerals

To extract the numerals of the Orthography, we run the following:
"""

# ╔═╡ bc4b7c66-d901-479c-b359-7eb6816edebb
numerals(bismi)

# ╔═╡ 54efcefa-9a8c-441b-84ab-a817f540c7b5
md"""
## Simple Encoding

Another task that might be of interest is the _Simple Encoding_, which is done by parsing the input Arabic texts.
"""

# ╔═╡ 6ed251f8-2b91-47d6-bccf-e0be6ee27e2c
parse(SimpleEncoding, basmala)

# ╔═╡ f32bb21c-b56e-49f6-89e4-7a4ec79eea26
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
ShortCodes = "f62ebe17-55c5-4640-972f-b59c0dd11ccf"
Yunir = "6ba116df-6904-454d-b214-90038a8281a6"

[compat]
HypertextLiteral = "~0.9.4"
PlutoUI = "~0.7.39"
ShortCodes = "~0.3.3"
Yunir = "~0.2.0"
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

[[Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

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

[[Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

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

[[Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[Random]]
deps = ["Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[ShortCodes]]
deps = ["Base64", "CodecZlib", "HTTP", "JSON3", "Memoize", "UUIDs"]
git-tree-sha1 = "0fcc38215160e0a964e9b0f0c25dcca3b2112ad1"
uuid = "f62ebe17-55c5-4640-972f-b59c0dd11ccf"
version = "0.3.3"

[[Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

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

[[TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

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
git-tree-sha1 = "01d79799ef777f8b7eb86e7b78833b955aaa9011"
uuid = "6ba116df-6904-454d-b214-90038a8281a6"
version = "0.2.0"

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
# ╟─11116806-2b3e-415c-869a-1bc298651b3a
# ╟─c2f05b07-0304-4a13-a313-c9fe56984cd5
# ╟─3b199179-e3d8-4b03-8030-ed96d204c568
# ╟─bcc099e5-3fbf-4e30-bd47-1b391e32b6ea
# ╠═7b8bbe1e-6acc-4315-8540-dd0d535c0f2e
# ╠═36b08d28-ecd4-4f69-a1cc-5b272f4f9724
# ╠═4a52e875-0d78-484d-8be1-b2f23fbd61fc
# ╟─796d4a46-4879-41f5-916c-aa572a381c60
# ╠═398ae094-2434-4ceb-a1f0-d01b69191799
# ╟─8a40f383-abe7-47b5-91e8-6dcfde985bef
# ╠═aee087d0-9135-4491-ab13-cb1d896482bc
# ╟─887dd81c-d80b-467a-87e2-7e2a80d5db94
# ╠═44e21ff8-dc40-4d91-b6f7-74e557a68e44
# ╠═74e4df59-330b-47fc-9a86-b9a02bf8dab8
# ╠═f73c4db1-46fb-4b4d-9fba-ff7f47b1af80
# ╟─42a9c988-db85-49a7-b70b-0537102ca360
# ╠═1b9f3f21-afe9-4d2a-8ef6-c26a92f9cb6e
# ╠═382998c5-14e2-4ed2-8a3f-92308d21779b
# ╟─e6b91ad8-6e6e-4131-bd42-0d821bd2544b
# ╠═518ac5e0-0376-4885-abb3-2794b91da7d1
# ╠═4ffffce8-39d8-4460-bdc7-e5c8f91690db
# ╟─3ce7f8a5-2a8a-4081-951b-6b1f127053cc
# ╠═bc4b7c66-d901-479c-b359-7eb6816edebb
# ╟─54efcefa-9a8c-441b-84ab-a817f540c7b5
# ╠═6ed251f8-2b91-47d6-bccf-e0be6ee27e2c
# ╟─f32bb21c-b56e-49f6-89e4-7a4ec79eea26
# ╠═06c7c34a-e6d6-11ec-1138-539d57107c04
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
