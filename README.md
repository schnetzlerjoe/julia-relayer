# Julia IBC Relayer

..................................WORK IN PROGRESS............................

This relayer, built in Julia, is built to provide inter-blockchain communication relaying across blockchains in a way that supports multi-threading combined with Julia's built in task system which results in super fast relaying speeds.

Relaying is handled by taking each connection on each configured blockchain and splitting them up into groups across each thread. All packets that require relaying are then created and submitted on each chain.

The higher you configure the thread count, the more paralell processes thus the faster the relayer will relay transactions.

## Start Relaying
`make init` initializes the config.yaml file. Edit your configuration here as outlined.
`make start` will start relaying packets across all connections (or just connections specified in the config).

## Interchain Querying
This relayer has interchain querying built in. For an example module using this form of interchain querying, see https://github.com/defund-labs/defund/tree/main/x/query.

To enable interchain querying, set the `querying` param for the chain in the config file to true.

## Filter
You can filter what packets you want to relay based on the account that submitted the packet to be relayed. This is super useful for institutions or even individuals that would like to run a relayer solely for themselves which provides better security for them and higher throughput.