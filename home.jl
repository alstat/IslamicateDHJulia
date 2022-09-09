### A Pluto.jl notebook ###
# v0.19.11

using Markdown
using InteractiveUtils

# ╔═╡ 3dc9e198-cb22-46ff-bf0d-d9ff93faf891
begin
	using HypertextLiteral: @htl
	using Dates
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

Asaad, A. (2022). _Islamicate Digital Humanities using Julia_.
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

# ╔═╡ 8d361b6b-822b-4102-94cb-9b8c7c7bd323


# ╔═╡ 2e85e790-2f23-4ed9-aa83-6aea9b9c86b6
md"""#### 3. [Introduction to Julia Programming Language]()
###### 3.1 Numerical Computations
###### 3.2 String Operations
###### 3.3 Modules
###### 3.4 Using Jupyter Notebook
###### 3.5 Using Pluto.jl
###### 3.6 Using VSCode
"""

# ╔═╡ 81e135f6-b3b3-49b1-acfb-931d017f9f34


# ╔═╡ 67b68c98-d79c-4d1a-876c-70422396eea6
md"""
#### 4. [Introduction to Statistics]()
###### 4.1 Probability Distributions
###### 4.2 Hypothesis Testing
###### 4.3 Modeling
###### 4.6 Statistics vs Machine Learning
"""

# ╔═╡ 73fc085d-ddac-4d01-a033-7ce4f3a161f5


# ╔═╡ e0ff7072-1770-46d1-a92f-9a483fe37e4b
md"""
#### 5. [Introduction to Arabic Natural Language Processing]()
###### 5.1 Representing Arabic Texts as Data
###### 5.2 Term Frequency–Inverse Document Frequency
###### 5.3 Modeling
###### 5.6 Statistics vs Machine Learning
"""

# ╔═╡ d6a5205a-da25-473d-b9ae-9089434abfdd


# ╔═╡ e50fa6d8-3b11-4937-8e83-a5a1268ff5ea
md"""
#### 6. [Introduction to QuranTree.jl]()
###### 6.1 Representing Arabic Texts as Data
###### 6.2 Term Frequency–Inverse Document Frequency
###### 6.3 Modeling
###### 6.6 Statistics vs Machine Learning
"""

# ╔═╡ be1c4c90-7ffc-4cb1-9262-93a0f20d113f


# ╔═╡ bf3f52de-8ed0-428c-b401-aab5d16a16a7
md"""
#### 7. [Introduction to Kitab.jl]()
###### 7.1 Representing Arabic Texts as Data
###### 7.2 Term Frequency–Inverse Document Frequency
###### 7.3 Modeling
###### 7.6 Statistics vs Machine Learning
"""

# ╔═╡ 7e8f99f0-9c51-4bde-aad2-c62fdec78d36


# ╔═╡ 7aa75fe5-1f00-411c-a94a-a4000c82416a
md"""
#### 8. [Introduction to Yunir.jl]()
###### 8.1 Representing Arabic Texts as Data
###### 8.2 Term Frequency–Inverse Document Frequency
###### 8.3 Modeling
###### 8.6 Statistics vs Machine Learning
"""

# ╔═╡ 9ca79eb3-9f4a-4759-bd23-75df90550343


# ╔═╡ 4de6efcf-4c21-48c5-8d2f-a080ecdbb300
md"""
#### 9. [Case Study 1: Structural analysis of the Qur'an using hierarchical clustering of the Ayah's word embedding]()
###### 9.1 Representing Arabic Texts as Data
###### 9.2 Term Frequency–Inverse Document Frequency
###### 9.3 Modeling
###### 9.6 Statistics vs Machine Learning
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

[compat]
HypertextLiteral = "~0.9.4"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.6.6"
manifest_format = "2.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
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
# ╟─8d361b6b-822b-4102-94cb-9b8c7c7bd323
# ╟─2e85e790-2f23-4ed9-aa83-6aea9b9c86b6
# ╟─81e135f6-b3b3-49b1-acfb-931d017f9f34
# ╟─67b68c98-d79c-4d1a-876c-70422396eea6
# ╟─73fc085d-ddac-4d01-a033-7ce4f3a161f5
# ╟─e0ff7072-1770-46d1-a92f-9a483fe37e4b
# ╟─d6a5205a-da25-473d-b9ae-9089434abfdd
# ╟─e50fa6d8-3b11-4937-8e83-a5a1268ff5ea
# ╟─be1c4c90-7ffc-4cb1-9262-93a0f20d113f
# ╟─bf3f52de-8ed0-428c-b401-aab5d16a16a7
# ╟─7e8f99f0-9c51-4bde-aad2-c62fdec78d36
# ╟─7aa75fe5-1f00-411c-a94a-a4000c82416a
# ╟─9ca79eb3-9f4a-4759-bd23-75df90550343
# ╟─4de6efcf-4c21-48c5-8d2f-a080ecdbb300
# ╟─fcad7260-2d5d-4b6e-bf2e-c4f79eb9f02a
# ╟─3dc9e198-cb22-46ff-bf0d-d9ff93faf891
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
