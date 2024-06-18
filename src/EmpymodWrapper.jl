module EmpymodWrapper

using PyCall

# Function to install empymod if not already installed
function ensure_empymod_installed()
    try
        pyimport("empymod")
    catch
        println("empymod not found. Installing...")
        run(`$(PyCall.python) -m pip install empymod`)
    end
end

# Ensure empymod is installed
ensure_empymod_installed()

const empymod = PyNULL()

function __init__()
    copy!(empymod, pyimport("empymod"))
end

function empymod_dipole(args...; kwargs...)
    result = empymod.dipole(args...; kwargs...)
    return result
end

function empymod_bipole(args...; kwargs...)
    result = empymod.bipole(args...; kwargs...)
    return result
end

function empymod_loop(args...; kwargs...)
    result = empymod.loop(args...; kwargs...)
    return result
end

export empymod_loop, empymod_dipole, empymod_bipole 

end # module EmpymodWrapper
