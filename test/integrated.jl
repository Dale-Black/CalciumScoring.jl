using Test
using CalciumScoring

@testset "Integrated" begin
    # Number
    v1 = [
        -1024 -1024 -1024 -1024
        -1024 800 800 -1024
        -1024 800 800 -1024
        -1024 -1024 -1024 -1024
    ]
    vol = cat(v1, v1; dims=3)
    alg = Integrated(vol)
    S_Bkg = -1024
    S_Obj = 800
    answer = 8
    @test score(S_Bkg, S_Obj, alg) == answer

    # Volume
    size = [0.5, 0.5, 0.5]
    answer = 8 * 0.5 * 0.5 * 0.5
    @test score(S_Bkg, S_Obj, size, alg) == answer

    # Mass
    size = [0.5, 0.5, 0.5]
    ρ = 10.0
    answer = 8 * 0.5 * 0.5 * 0.5 * 10
    @test score(S_Bkg, S_Obj, size, ρ, alg) == answer

end