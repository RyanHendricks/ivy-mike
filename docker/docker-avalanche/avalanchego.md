Usage of avalanchego:
  -api-admin-enabled
        If true, this node exposes the Admin API
  -api-auth-password string
        Password used to create/validate API authorization tokens. Can be changed via API call.
  -api-auth-required
        Require authorization token to call HTTP APIs
  -api-health-enabled
        If true, this node exposes the Health API (default true)
  -api-info-enabled
        If true, this node exposes the Info API (default true)
  -api-ipcs-enabled
        If true, IPCs can be opened
  -api-keystore-enabled
        If true, this node exposes the Keystore API (default true)
  -api-metrics-enabled
        If true, this node exposes the Metrics API (default true)
  -assertions-enabled
        Turn on assertion execution (default true)
  -benchlist-duration int
        Amount of time a peer is benchlisted after surpassing the threshold. (default 3600000000000)
  -benchlist-fail-threshold int
        Number of consecutive failed queries before benchlisting a node. (default 10)
  -benchlist-min-failing-duration int
        Minimum amount of time messages to a peer must be failing before the peer is benched. (default 300000000000)
  -benchlist-peer-summary-enabled
        Enables peer specific query latency metrics.
  -bootstrap-ids string
        Comma separated list of bootstrap peer ids to connect to. Example: NodeID-JR4dVmy6ffUGAKCBDkyCbeZbyHQBeDsET,NodeID-8CrVPQZ4VSqgL8zTdvL14G8HqAfrBr4z (default "default")
  -bootstrap-ips string
        Comma separated list of bootstrap peer ips to connect to. Example: 127.0.0.1:9630,127.0.0.1:9631 (default "default")
  -consensus-gossip-frequency int
        Frequency of gossiping accepted frontiers. (default 10000000000)
  -consensus-shutdown-timeout int
        Timeout before killing an unresponsive chain. (default 1000000000)
  -creation-tx-fee uint
        Transaction fee, in nAVAX, for transactions that create new state (default 1000000)
  -db-dir string
        Database directory for Avalanche state (default "/root/.avalanchego/db")
  -db-enabled
        Turn on persistent storage (default true)
  -fd-limit uint
        Attempts to raise the process file descriptor limit to at least this value. (default 32768)
  -http-host "0.0.0.0"
        Address of the HTTP server (default "127.0.0.1")
  -http-port uint
        Port of the HTTP server (default 9650)
  -http-tls-cert-file string
        TLS certificate file for the HTTPs server
  -http-tls-enabled
        Upgrade the HTTP server to HTTPs
  -http-tls-key-file string
        TLS private key file for the HTTPs server
  -ipcs-chain-ids string
        Comma separated list of chain ids to add to the IPC engine. Example: 11111111111111111111111111111111LpoYY,4R5p2RXDGLqaifZE4hHWH9owe34pfoBULn1DrQTWivjg8o4aH
  -ipcs-path string
        The directory (Unix) or named pipe name prefix (Windows) for IPC sockets (default "/tmp")
  -log-dir string
        Logging directory for Avalanche
  -log-display-highlight string
        Whether to color/highlight display logs. Default highlights when the output is a terminal. Otherwise, should be one of {auto, plain, colors} (default "auto")
  -log-display-level string
        The log display level. If left blank, will inherit the value of log-level. Otherwise, should be one of {verbo, debug, info, warn, error, fatal, off}
  -log-level string
        The log level. Should be one of {verbo, debug, info, warn, error, fatal, off} (default "info")
  -max-non-staker-pending-msgs uint
        Maximum number of messages a non-staker is allowed to have pending. (default 3)
  -max-stake-duration uint
        Maximum staking duration, in seconds (default 31536000)
  -max-validator-stake uint
        Maximum stake, in nAVAX, that can be placed on a validator on the primary network (default 3000000000000000)
  -min-delegation-fee uint
        Minimum delegation fee, in the range [0, 1000000], that can be charged for delegation on the primary network (default 20000)
  -min-delegator-stake uint
        Minimum stake, in nAVAX, that can be delegated on the primary network (default 25000000000)
  -min-stake-duration uint
        Minimum staking duration, in seconds (default 86400)
  -min-validator-stake uint
        Minimum stake, in nAVAX, required to validate the primary network (default 2000000000000)
  -network-id string
        Network ID this node will connect to (default "mainnet")
  -network-initial-timeout int
        Initial timeout value of the adaptive timeout manager, in nanoseconds. (default 10000000000)
  -network-maximum-timeout int
        Maximum timeout value of the adaptive timeout manager, in nanoseconds. (default 10000000000)
  -network-minimum-timeout int
        Minimum timeout value of the adaptive timeout manager, in nanoseconds. (default 500000000)
  -network-timeout-increase int
        Increase of network timeout after a failed request, in nanoseconds. (default 60000000)
  -network-timeout-reduction int
        Decrease of network timeout after a successful request, in nanoseconds. (default 12000000)
  -p2p-tls-enabled
        Require TLS to authenticate network communication (default true)
  -plugin-dir string
        Plugin directory for Avalanche VMs (default "build/plugins")
  -public-ip string
        Public IP of this node
  -signature-verification-enabled
        Turn on signature verification (default true)
  -snow-avalanche-batch-size int
        Number of operations to batch in each new vertex (default 30)
  -snow-avalanche-num-parents int
        Number of vertexes for reference from each new vertex (default 5)
  -snow-concurrent-repolls int
        Minimum number of concurrent polls for finalizing consensus (default 4)
  -snow-quorum-size int
        Alpha value to use for required number positive results (default 14)
  -snow-rogue-commit-threshold int
        Beta value to use for rogue transactions (default 30)
  -snow-sample-size int
        Number of nodes to query for each network poll (default 20)
  -snow-virtuous-commit-threshold int
        Beta value to use for virtuous transactions (default 15)
  -stake-minting-period uint
        Consumption period of the staking function, in seconds (default 31536000)
  -staker-cpu-reserved float
        Reserve a portion of the chain's CPU time for stakers. (default 0.2)
  -staker-msg-reserved float
        Reserve a portion of the chain message queue's space for stakers. (default 0.2)
  -staking-disabled-weight uint
        Weight to provide to each peer when staking is disabled (default 1)
  -staking-enabled
        Enable staking. If enabled, Network TLS is required. (default true)
  -staking-port uint
        Port of the consensus server (default 9651)
  -staking-tls-cert-file string
        TLS certificate for staking (default "/root/.avalanchego/staking/staker.crt")
  -staking-tls-key-file string
        TLS private key for staking (default "/root/.avalanchego/staking/staker.key")
  -tx-fee uint
        Transaction fee, in nAVAX (default 1000000)
  -uptime-requirement float
        Fraction of time a validator must be online to receive rewards (default 0.6)
  -version
        If true, print version and quit
  -xput-server-enabled
        If true, throughput test server is created
  -xput-server-port uint
        Port of the deprecated throughput test server (default 9652)