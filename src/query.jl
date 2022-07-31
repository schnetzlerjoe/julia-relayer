using HTTP

function GetAllConnections(chainid::String)
    connections = Dict()
    return connections
end

function GetConnection(chainid::String, connectionid::String)
    connection = Dict()
    return connection
end

function GetAllInterqueries(chainid::String, connectionid::String)
    return queries
end

function GetInterquery(storeid::String, chainid::String, connectionid::String)
    return query
end