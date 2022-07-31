function Run()
    while true
        # run a process for each connection split up into seperate threads
        # as much as the current cpu specs allows
        Threads.@threads for connection in connections
        end
    end
end