using EmpymodWrapper

result = empymod_loop(src=[0, 0, 0, 0, 90],
    rec=[100, 0, 0, 0, 90],
    depth=[0], res=[2e14, 100], freqtime=1, verb=0)
println(result)

result = empymod_loop(src=[0, 0, 0, 0, 90],
    rec=[100, 0, 0, 0, 90],
    depth=0, res=[2e14, 100], freqtime=1, verb=1, epermH=[0,0])
println(result)


result = empymod_loop(src=[0, 0, 0, 0, 90],
       rec=[100, 0, 0, 0, 90],
       depth=0, res=[2e14, 100], freqtime=1, signal=0, verb=1, epermH=[0,0])
println(result)
