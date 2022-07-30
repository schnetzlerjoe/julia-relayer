using HTTP

function GetAllConnections(chainid::String)
    return connections
end

function GetConnection(chainid::String, connectionid::String)
    return connection
end

function GetAllInterqueries(chainid::String, connectionid::String)
    return connections
end

function GetInterquery(storeid::String, chainid::String, connectionid::String)
    return connection
end