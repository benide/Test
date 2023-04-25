using Test
using Documenter

DocMeta.setdocmeta!(Test, :DocTestSetup, :(using Test); recursive=true)

makedocs(;
    modules=[Test],
    authors="Ben Ide <ben@bencide.com>",
    repo="https://github.com/benide/Test/blob/{commit}{path}#{line}",
    sitename="Test.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://benide.github.io/Test",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/benide/Test",
    devbranch="master",
)
