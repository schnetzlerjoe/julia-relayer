using Test
include("config.jl")

@testset "config test" begin
    @test typeof(ReadConfig("./")) == Dict{Any, Any}
    @test ConfigChecks(ReadConfig("./")) === nothing
end