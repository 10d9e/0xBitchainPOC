# CareChain eth-netstats Docker image

      eth-netstats:
        image: carechain/eth-netstats
        ports:
          - "3000:3000"
        environment:
          - WS_SECRET=${ETHSTATS_SECRET}
          - TRUSTED_HOSTS=${ETHSTATS_TRUSTED_HOSTS}
