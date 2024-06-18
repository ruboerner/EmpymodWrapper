using EmpymodWrapper
using Test

@testset "empymod loop source frequency domain" begin
    offset = 100.0
    hz = empymod_loop(
        src=[0, 0, 0, 0, 90],
        rec=[offset, 0, 0, 0, 90],
        depth=0, res=[2e14, 100], freqtime=1e-3, verb=0)
    @test real(hz[1]) ≈ -1 / (4 * pi * offset^3) atol=1e-3
end

@testset "empymod loop source time domain" begin
    offset = 100.0
    hz = empymod_loop(
        src=[0, 0, 0, 0, 90],
        rec=[offset, 0, 0, 0, 90],
        depth=0, res=[2e14, 100], signal=-1, freqtime=1e-6, verb=0)
    @test real(hz[1]) ≈ -1 / (4 * pi * offset^3) atol=1e-3
end