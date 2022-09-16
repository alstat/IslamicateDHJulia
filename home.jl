### A Pluto.jl notebook ###
# v0.19.11

using Markdown
using InteractiveUtils

# ╔═╡ 3dc9e198-cb22-46ff-bf0d-d9ff93faf891
begin
	using HypertextLiteral: @htl
	using Dates
	using PlutoUI
	TableOfContents(title="Content")
end

# ╔═╡ e20af49d-b57c-4d94-9e87-52ab088bdfc6
@htl("""
<div class="title footer">Islamicate Digital Humanities<br> using Julia</div>
<i>by Al-Ahmadgaid B. Asaad</i><br><br>
<div><i>last updated: $(Dates.now())</i></div>
""")

# ╔═╡ 4ec8e272-5de6-4d5d-af8a-b647a2b536c4


# ╔═╡ ee983053-33c6-4341-b8bd-861250e7d54a
md"""
## About the book
There have been a growing interest in applying digital methodologies to studying humanities. Among these comes from the area of Islamic studies, where statistical and computational methodologies have been applied to studying the Qur'an and/or the Hadith (the sayings of the Prophet Muhammad ﷺ). Most of these works, however, are collaborations with scholars from the scientific and/or the engineering community, of which the output often gives new insights into the problem. In addition, other collaborations paid the way to digitizing the Islamic books as in the works of Open Islamic Texts Initiative (OpenITI) and the KITAB project.

While collaborations with the scientific and/or engineering community will indeed advance the Islamic digital humanities, I also intend to give or maybe equip the students of Islamic studies with an intermediate-to-advanced knowledge in digital methodologies. By doing so, the students and scholars of the field can work on their own and not be hindered by the need for funding for collaboration. In this way, we open more opportunities to solve research problems from the digital and/or computational perspective.

The book, however, extends the scope to Islamicate studies, which by definition also covers literatures on the history of areas influenced by Islam but not necessarily a Muslim country/region. Further, the book intends to be as comprehensive as possible, starting from beginner to advanced digital approaches to humanities. Lastly, while the focus of the book is in Islamicate studies, the methodologies are applicable to other disciplines of humanities.
"""

# ╔═╡ f5b45006-0a8e-42e9-b632-08e47f084e33
md"""
## About the author

[_Mr. Al-Ahmadgaid B. Asaad_](https://www.linkedin.com/in/al-ahmadgaid-asaad-68613a44/) is a Statistician from the Philippines with 5 years work experience as a Data Scientist in the private sectors of the country. He has a Master of Science in Statistics from the [_University of the Philippines Diliman_](https://upd.edu.ph/), and is currently taking up Master of Arts in Islamic Studies from the same university. He is the developer of the [_QuranTree.jl_](https://alstat.github.io/QuranTree.jl/dev/), [_Yunir.jl_](https://alstat.github.io/Yunir.jl/dev/) and [_Kitab.jl_](https://alstat.github.io/Kitab.jl/dev/), the main Julia programming language libraries used in this book.
"""

# ╔═╡ a348ba1d-a179-4aed-a16d-098ed38db0d8
md"""
## How to cite

Asaad, AA.B. (2022). _Islamicate Digital Humanities using Julia_.
"""

# ╔═╡ 73fec04d-1868-4188-9635-1fa423a4bdf9


# ╔═╡ 32c3e150-16f5-11ed-3de3-338b0bd45830
md"""
## Table of contents
"""

# ╔═╡ dc5a4d1c-31d9-4307-bc1c-35b49057b765
md"""
###### [Preface](https://alstat.github.io/IslamicateDHJulia/preface.html)
###### [Acknowledgement]()
"""

# ╔═╡ 4f716f88-fbd9-48e7-ab7e-79dd8915e0af


# ╔═╡ 6b218814-44fc-4b92-ac89-178101479e86
md"""
#### 1. [Introduction](https://alstat.github.io/IslamicateDHJulia/intro.html)
###### 1.1 What is Digital Humanities?
###### 1.2 Why Julia?
"""

# ╔═╡ 1a5c219e-2440-49cc-b25c-cdc5d6b140dc


# ╔═╡ efaeb548-2f48-430b-82f8-afda84c94e13
md"""
#### 2. [Introduction to Islamicate Digital Humanities]()
###### 2.1 Islamic Texts as Data
###### 2.2 Computational Methods on Islamic Texts
"""

# ╔═╡ 3fb00ee1-4802-4121-8d7f-6e05aa0833e1


# ╔═╡ 8d361b6b-822b-4102-94cb-9b8c7c7bd323
md"""#### 3. [Setting up Julia]()
###### 3.1 Installation
###### 3.2 Julia Editors
###### 3.3 Numerical Computations
###### 3.4 String Operations
###### 3.5 List Operations
###### 3.6 Modules
"""

# ╔═╡ da66018d-65c6-4290-bce1-5740928a1b1d


# ╔═╡ 2e85e790-2f23-4ed9-aa83-6aea9b9c86b6
md"""#### 3. [Introduction to Julia programming language]()
###### 3.1 Installation
###### 3.2 Julia Editors
###### 3.3 Numerical Computations
###### 3.4 String Operations
###### 3.5 List Operations
###### 3.6 Modules
"""

# ╔═╡ 81e135f6-b3b3-49b1-acfb-931d017f9f34


# ╔═╡ 6b71c23f-9d8a-4b22-bee3-59064f146d9b
md"""
#### 4. Intermediate Julia programming
##### 4.1 Defining custom functions
"""

# ╔═╡ e99b7d9c-bfbb-44db-ac91-213e02835f98


# ╔═╡ e50fa6d8-3b11-4937-8e83-a5a1268ff5ea
md"""
#### 4. [Introduction to QuranTree.jl]()
###### 4.1 Representing Arabic Texts as Data
###### 4.2 Term Frequency–Inverse Document Frequency
###### 4.3 Modeling
###### 4.6 Statistics vs Machine Learning
"""

# ╔═╡ 46943503-1357-4084-814a-6139b6e7a487


# ╔═╡ bf3f52de-8ed0-428c-b401-aab5d16a16a7
md"""
#### 5. [Introduction to Kitab.jl]()
###### 5.1 Representing Arabic Texts as Data
###### 5.2 Term Frequency–Inverse Document Frequency
###### 5.3 Modeling
###### 5.6 Statistics vs Machine Learning
"""

# ╔═╡ be1c4c90-7ffc-4cb1-9262-93a0f20d113f


# ╔═╡ 7aa75fe5-1f00-411c-a94a-a4000c82416a
md"""
#### 6. [Introduction to Yunir.jl]()
###### 6.1 Representing Arabic Texts as Data
###### 6.2 Term Frequency–Inverse Document Frequency
###### 6.3 Modeling
###### 6.6 Statistics vs Machine Learning
"""

# ╔═╡ e93adc7d-d915-465c-8599-f243b05ba689


# ╔═╡ 67b68c98-d79c-4d1a-876c-70422396eea6
md"""
#### 7. [Introduction to Statistics]()
###### 7.1 Probability Distributions
###### 7.2 Hypothesis Testing
###### 7.3 Modeling
###### 7.6 Statistics vs Machine Learning
"""

# ╔═╡ 6bb8d090-9da4-4dfa-809a-e95ee239059f


# ╔═╡ 0e608ab7-cca8-43db-9c42-8bbfa0cc0525
md"""
#### 8. [Introduction to Machine Learning]()
###### 8.1 Probability Distributions
###### 8.2 Hypothesis Testing
###### 8.3 Modeling
###### 8.6 Statistics vs Machine Learning
"""

# ╔═╡ 73fc085d-ddac-4d01-a033-7ce4f3a161f5


# ╔═╡ e0ff7072-1770-46d1-a92f-9a483fe37e4b
md"""
#### 9. [Introduction to Arabic NLP]()
###### 9.1 Representing Arabic Texts as Data
###### 9.2 Term Frequency–Inverse Document Frequency
###### 9.3 Modeling
###### 9.6 Statistics vs Machine Learning
"""

# ╔═╡ 9ca79eb3-9f4a-4759-bd23-75df90550343


# ╔═╡ 4de6efcf-4c21-48c5-8d2f-a080ecdbb300
md"""
#### 10. [Case Study 1: Structural analysis of the Qur'an using hierarchical clustering of the Ayah's word embedding]()
###### 10.1 Representing Arabic Texts as Data
###### 10.2 Term Frequency–Inverse Document Frequency
###### 10.3 Modeling
###### 10.6 Statistics vs Machine Learning
"""

# ╔═╡ 0ee17c6f-8cb7-484a-8239-640fbcb260b4


# ╔═╡ 02e67732-8ca8-464e-ab1e-0089f18fdd17
md"""
#### A.1 [Introduction to Calculus]()
###### A.1 Probability Distributions
###### A.2 Hypothesis Testing
###### A.3 Modeling
###### A.6 Statistics vs Machine Learning
"""

# ╔═╡ d6a5205a-da25-473d-b9ae-9089434abfdd


# ╔═╡ 9740a03f-9012-4673-b38c-2c909e37bb42
md"""
#### B. [Introduction to Linear Algebra]()
###### B.1 Probability Distributions
###### B.2 Hypothesis Testing
###### B.3 Modeling
###### B.6 Statistics vs Machine Learning
"""

# ╔═╡ fcad7260-2d5d-4b6e-bf2e-c4f79eb9f02a
html"""
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Scheherazade+New:wght@400;700&family=Tajawal&display=swap" rel="stylesheet">
<style>
.title {
	font-size: 60px;
}

.footer {
	font-family: Vollkorn,serif;
	font-size: 2.2rem;
	font-weight: 700;
	color: #a16e00;
}

</style>
<hr/>
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Dates = "ade2ca70-3891-5945-98fb-dc099432e06a"
HypertextLiteral = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
HypertextLiteral = "~0.9.4"
PlutoUI = "~0.7.40"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.6.6"
manifest_format = "2.0"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "3d5bf43e3e8b412656404ed9466f1dcbf7c50269"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.4.0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "a602d7b0babfca89005da04d89223b867b55319f"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.40"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╟─e20af49d-b57c-4d94-9e87-52ab088bdfc6
# ╟─4ec8e272-5de6-4d5d-af8a-b647a2b536c4
# ╟─ee983053-33c6-4341-b8bd-861250e7d54a
# ╟─f5b45006-0a8e-42e9-b632-08e47f084e33
# ╟─a348ba1d-a179-4aed-a16d-098ed38db0d8
# ╟─73fec04d-1868-4188-9635-1fa423a4bdf9
# ╟─32c3e150-16f5-11ed-3de3-338b0bd45830
# ╟─dc5a4d1c-31d9-4307-bc1c-35b49057b765
# ╟─4f716f88-fbd9-48e7-ab7e-79dd8915e0af
# ╟─6b218814-44fc-4b92-ac89-178101479e86
# ╟─1a5c219e-2440-49cc-b25c-cdc5d6b140dc
# ╟─efaeb548-2f48-430b-82f8-afda84c94e13
# ╟─3fb00ee1-4802-4121-8d7f-6e05aa0833e1
# ╟─8d361b6b-822b-4102-94cb-9b8c7c7bd323
# ╟─da66018d-65c6-4290-bce1-5740928a1b1d
# ╟─2e85e790-2f23-4ed9-aa83-6aea9b9c86b6
# ╟─81e135f6-b3b3-49b1-acfb-931d017f9f34
# ╟─6b71c23f-9d8a-4b22-bee3-59064f146d9b
# ╟─e99b7d9c-bfbb-44db-ac91-213e02835f98
# ╟─e50fa6d8-3b11-4937-8e83-a5a1268ff5ea
# ╟─46943503-1357-4084-814a-6139b6e7a487
# ╟─bf3f52de-8ed0-428c-b401-aab5d16a16a7
# ╟─be1c4c90-7ffc-4cb1-9262-93a0f20d113f
# ╟─7aa75fe5-1f00-411c-a94a-a4000c82416a
# ╟─e93adc7d-d915-465c-8599-f243b05ba689
# ╟─67b68c98-d79c-4d1a-876c-70422396eea6
# ╟─6bb8d090-9da4-4dfa-809a-e95ee239059f
# ╟─0e608ab7-cca8-43db-9c42-8bbfa0cc0525
# ╟─73fc085d-ddac-4d01-a033-7ce4f3a161f5
# ╟─e0ff7072-1770-46d1-a92f-9a483fe37e4b
# ╟─9ca79eb3-9f4a-4759-bd23-75df90550343
# ╟─4de6efcf-4c21-48c5-8d2f-a080ecdbb300
# ╟─0ee17c6f-8cb7-484a-8239-640fbcb260b4
# ╟─02e67732-8ca8-464e-ab1e-0089f18fdd17
# ╟─d6a5205a-da25-473d-b9ae-9089434abfdd
# ╟─9740a03f-9012-4673-b38c-2c909e37bb42
# ╟─fcad7260-2d5d-4b6e-bf2e-c4f79eb9f02a
# ╠═3dc9e198-cb22-46ff-bf0d-d9ff93faf891
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
