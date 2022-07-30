using YAML

# Runs checks on the config to ensure all needed params are present
function ConfigChecks(config::Dict) error
    return nothing
end

# Reads in and returns the config file using the provided home directory
function ReadConfig(home::String)
    config = YAML.load_file(home * "config.yaml")
    ConfigChecks(config)
    return config
end

println(typeof(ReadConfig("./")))