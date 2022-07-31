using Logging
include("query.jl")
function Run()
    while true
        connections = GetAllConnections("")
        # run a process for each connection split up into seperate threads
        # as much as the current cpu specs allows
        @info "running connections across " * string(Threads.nthreads()) * " threads..."
        Threads.@threads for connection in connections
        end
    end
end