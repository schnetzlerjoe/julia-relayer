# Julia IBC Relayer

..........WORK IN PROGRESS...........

This relayer, built in Julia, is built to provide inter-blockchain communication relaying across blockchains in a way that supports multi-threading combined with asynchronous tasks which results in super fast relaying speeds only constrained by each blockchains block time.

Relaying is handled by taking each connection and splitting them up into groups across each thread. Each IBC packet that needs to be relayed is relayed upon a successful client update on the clients on both chains and then relayed.

## Start Relaying
`make init` initializes the config.yaml file. Edit your configuration here as outlined.
`make start` will start relaying packets across all connections (or just connections specified in the config).

## Interchain Querying
This relayer has interchain querying built in. For an example module using this form of interchain querying, see https://github.com/defund-labs/defund/tree/main/x/query.

To enable interchain querying, set the `querying` param for the chain in the config file to true.