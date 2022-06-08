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

# ╔═╡ f73c4db1-46fb-4b4d-9fba-ff7f47b1af80
ebasmala = encode(basmala)

# ╔═╡ 796d4a46-4879-41f5-916c-aa572a381c60
md"""
Yunir.jl uses [extended Buckwalter](https://corpus.quran.com/java/buckwalter.jsp) transliteration based on Quranic Arabic Corpus of Kais Dukes. Converting back to Arabic is done using the Yunir.jl's `arabic` function:
"""

# ╔═╡ 398ae094-2434-4ceb-a1f0-d01b69191799
arabic(ebasmala)

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

# ╔═╡ 74e4df59-330b-47fc-9a86-b9a02bf8dab8
normalize(basmala)

# ╔═╡ 44e21ff8-dc40-4d91-b6f7-74e557a68e44
normalize(dbasmala)

# ╔═╡ 42a9c988-db85-49a7-b70b-0537102ca360
md"""
## Ortographic Analysis

Another interest might be in the analysis of the Orthography of the letters of the texts, this is possible by parsing the characters of the input Arabic texts as orthography.
"""

# ╔═╡ 1b9f3f21-afe9-4d2a-8ef6-c26a92f9cb6e
md"""To do this, we first `tokenize` the input texts:"""

# ╔═╡ 382998c5-14e2-4ed2-8a3f-92308d21779b
basmala_tokens = tokenize(basmala)

# ╔═╡ 518ac5e0-0376-4885-abb3-2794b91da7d1
bismi = parse(Orthography, basmala_tokens[1])

# ╔═╡ e6b91ad8-6e6e-4131-bd42-0d821bd2544b
md"""
### Vocals

To extract the vocals of the Orthography, we run the following:
"""

# ╔═╡ 4ffffce8-39d8-4460-bdc7-e5c8f91690db
Yunir.vocals(bismi)

# ╔═╡ 3ce7f8a5-2a8a-4081-951b-6b1f127053cc
md"""
### Numerals
"""

# ╔═╡ bc4b7c66-d901-479c-b359-7eb6816edebb
numerals(bismi)

# ╔═╡ 54efcefa-9a8c-441b-84ab-a817f540c7b5
md"""
## Simple Encoding
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