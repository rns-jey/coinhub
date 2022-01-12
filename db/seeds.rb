# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cryptocurrencies = Cryptocurrency.create([
  { name: 'Bitcoin', kind: 'Crypto', symbol: 'BTC', slug: 'bitcoin', is_active: true },
  { name: 'Ethereum', kind: 'Crypto', symbol: 'ETH', slug: 'ethereum', is_active: true },
  { name: 'Tether', kind: 'Crypto', symbol: 'USDT', slug: 'tether', is_active: true },
  { name: 'BNB', kind: 'Crypto', symbol: 'BNB', slug: 'bnb', is_active: true },
  { name: 'USD Coin', kind: 'Crypto', symbol: 'USDC', slug: 'usd-coin', is_active: true },
  { name: 'Solana', kind: 'Crypto', symbol: 'SOL', slug: 'solana', is_active: true },
  { name: 'Cardano', kind: 'Crypto', symbol: 'ADA', slug: 'cardano', is_active: true },
  { name: 'XRP', kind: 'Crypto', symbol: 'XRP', slug: 'xrp', is_active: true },
  { name: 'Terra', kind: 'Crypto', symbol: 'LUNA', slug: 'terra-luna', is_active: true },
  { name: 'Polkadot', kind: 'Crypto', symbol: 'DOT', slug: 'polkadot-new', is_active: true },
  { name: 'Avalanche', kind: 'Crypto', symbol: 'AVAX', slug: 'avalanche', is_active: true },
  { name: 'Dogecoin', kind: 'Crypto', symbol: 'DOGE', slug: 'dogecoin', is_active: true },
  { name: 'Polygon', kind: 'Crypto', symbol: 'MATIC', slug: 'polygon', is_active: true },
  { name: 'Shiba Inu', kind: 'Crypto', symbol: 'SHIB', slug: 'shiba-inu', is_active: true },
  { name: 'Binance USD', kind: 'Crypto', symbol: 'BUSD', slug: 'binance-usd', is_active: true },
  { name: 'Chainlink', kind: 'Crypto', symbol: 'LINK', slug: 'chainlink', is_active: true },
  { name: 'Crypto.com Coin', kind: 'Crypto', symbol: 'CRO', slug: 'crypto-com-coin', is_active: true },
  { name: 'Wrapped Bitcoin', kind: 'Crypto', symbol: 'WBTC', slug: 'wrapped-bitcoin', is_active: true },
  { name: 'NEAR Protocol', kind: 'Crypto', symbol: 'NEAR', slug: 'near-protocol', is_active: true },
  { name: 'TerraUSD', kind: 'Crypto', symbol: 'UST', slug: 'terrausd', is_active: true },
  { name: 'Uniswap', kind: 'Crypto', symbol: 'UNI', slug: 'uniswap', is_active: true },
  { name: 'Algorand', kind: 'Crypto', symbol: 'ALGO', slug: 'algorand', is_active: true },
  { name: 'Dai', kind: 'Crypto', symbol: 'DAI', slug: 'multi-collateral-dai', is_active: true },
  { name: 'Litecoin', kind: 'Crypto', symbol: 'LTC', slug: 'litecoin', is_active: true },
  { name: 'Cosmos', kind: 'Crypto', symbol: 'ATOM', slug: 'cosmos', is_active: true },
  { name: 'Fantom', kind: 'Crypto', symbol: 'FTM', slug: 'fantom', is_active: true },
  { name: 'Bitcoin Cash', kind: 'Crypto', symbol: 'BCH', slug: 'bitcoin-cash', is_active: true },
  { name: 'TRON', kind: 'Crypto', symbol: 'TRX', slug: 'tron', is_active: true },
  { name: 'Internet Computer', kind: 'Crypto', symbol: 'ICP', slug: 'internet-computer', is_active: true },
  { name: 'Stellar', kind: 'Crypto', symbol: 'XLM', slug: 'stellar', is_active: true },
  { name: 'FTX Token', kind: 'Crypto', symbol: 'FTT', slug: 'ftx-token', is_active: true },
  { name: 'Decentraland', kind: 'Crypto', symbol: 'MANA', slug: 'decentraland', is_active: true },
  { name: 'Hedera', kind: 'Crypto', symbol: 'HBAR', slug: 'hedera', is_active: true },
  { name: 'VeChain', kind: 'Crypto', symbol: 'VET', slug: 'vechain', is_active: true },
  { name: 'Axie Infinity', kind: 'Crypto', symbol: 'AXS', slug: 'axie-infinity', is_active: true },
  { name: 'Bitcoin BEP2', kind: 'Crypto', symbol: 'BTCB', slug: 'bitcoin-bep2', is_active: true },
  { name: 'The Sandbox', kind: 'Crypto', symbol: 'SAND', slug: 'the-sandbox', is_active: true },
  { name: 'Filecoin', kind: 'Crypto', symbol: 'FIL', slug: 'filecoin', is_active: true },
  { name: 'Theta Network', kind: 'Crypto', symbol: 'THETA', slug: 'theta-network', is_active: true },
  { name: 'Elrond', kind: 'Crypto', symbol: 'EGLD', slug: 'elrond-egld', is_active: true },
  { name: 'Ethereum Classic', kind: 'Crypto', symbol: 'ETC', slug: 'ethereum-classic', is_active: true },
  { name: 'Tezos', kind: 'Crypto', symbol: 'XTZ', slug: 'tezos', is_active: true },
  { name: 'Harmony', kind: 'Crypto', symbol: 'ONE', slug: 'harmony', is_active: true },
  { name: 'Klaytn', kind: 'Crypto', symbol: 'KLAY', slug: 'klaytn', is_active: true },
  { name: 'UNUS SED LEO', kind: 'Crypto', symbol: 'LEO', slug: 'unus-sed-leo', is_active: true },
  { name: 'Monero', kind: 'Crypto', symbol: 'XMR', slug: 'monero', is_active: true },
  { name: 'Helium', kind: 'Crypto', symbol: 'HNT', slug: 'helium', is_active: true },
  { name: 'IOTA', kind: 'Crypto', symbol: 'MIOTA', slug: 'iota', is_active: true },
  { name: 'Aave', kind: 'Crypto', symbol: 'AAVE', slug: 'aave', is_active: true },
  { name: 'PancakeSwap', kind: 'Crypto', symbol: 'CAKE', slug: 'pancakeswap', is_active: true },
  { name: 'The Graph', kind: 'Crypto', symbol: 'GRT', slug: 'the-graph', is_active: true },
  { name: 'EOS', kind: 'Crypto', symbol: 'EOS', slug: 'eos', is_active: true },
  { name: 'Stacks', kind: 'Crypto', symbol: 'STX', slug: 'stacks', is_active: true },
  { name: 'BitTorrent', kind: 'Crypto', symbol: 'BTT', slug: 'bittorrent', is_active: true },
  { name: 'Flow', kind: 'Crypto', symbol: 'FLOW', slug: 'flow', is_active: true },
  { name: 'Gala', kind: 'Crypto', symbol: 'GALA', slug: 'gala', is_active: true },
  { name: 'Kusama', kind: 'Crypto', symbol: 'KSM', slug: 'kusama', is_active: true },
  { name: 'Curve DAO Token', kind: 'Crypto', symbol: 'CRV', slug: 'curve-dao-token', is_active: true },
  { name: 'THORChain', kind: 'Crypto', symbol: 'RUNE', slug: 'thorchain', is_active: true },
  { name: 'Bitcoin SV', kind: 'Crypto', symbol: 'BSV', slug: 'bitcoin-sv', is_active: true },
  { name: 'Maker', kind: 'Crypto', symbol: 'MKR', slug: 'maker', is_active: true },
  { name: 'Loopring', kind: 'Crypto', symbol: 'LRC', slug: 'loopring', is_active: true },
  { name: 'Enjin Coin', kind: 'Crypto', symbol: 'ENJ', slug: 'enjin-coin', is_active: true },
  { name: 'Quant', kind: 'Crypto', symbol: 'QNT', slug: 'quant', is_active: true },
  { name: 'Zcash', kind: 'Crypto', symbol: 'ZEC', slug: 'zcash', is_active: true },
  { name: 'Celo', kind: 'Crypto', symbol: 'CELO', slug: 'celo', is_active: true },
  { name: 'eCash', kind: 'Crypto', symbol: 'XEC', slug: 'ecash', is_active: true },
  { name: 'Amp', kind: 'Crypto', symbol: 'AMP', slug: 'amp', is_active: true },
  { name: 'Arweave', kind: 'Crypto', symbol: 'AR', slug: 'arweave', is_active: true },
  { name: 'Neo', kind: 'Crypto', symbol: 'NEO', slug: 'neo', is_active: true },
  { name: 'Chiliz', kind: 'Crypto', symbol: 'CHZ', slug: 'chiliz', is_active: true },
  { name: 'Basic Attention Token', kind: 'Crypto', symbol: 'BAT', slug: 'basic-attention-token', is_active: true },
  { name: 'Kadena', kind: 'Crypto', symbol: 'KDA', slug: 'kadena', is_active: true },
  { name: 'Waves', kind: 'Crypto', symbol: 'WAVES', slug: 'waves', is_active: true },
  { name: 'KuCoin Token', kind: 'Crypto', symbol: 'KCS', slug: 'kucoin-token', is_active: true },
  { name: 'Oasis Network', kind: 'Crypto', symbol: 'ROSE', slug: 'oasis-network', is_active: true },
  { name: 'OKB', kind: 'Crypto', symbol: 'OKB', slug: 'okb', is_active: true },
  { name: 'Huobi Token', kind: 'Crypto', symbol: 'HT', slug: 'huobi-token', is_active: true },
  { name: 'Dash', kind: 'Crypto', symbol: 'DASH', slug: 'dash', is_active: true },
  { name: 'true },USD', kind: 'Crypto', symbol: 'TUSD', slug: 'true },usd', is_active: true },
  { name: 'Nexo', kind: 'Crypto', symbol: 'NEXO', slug: 'nexo', is_active: true },
  { name: 'Compound', kind: 'Crypto', symbol: 'COMP', slug: 'compound', is_active: true },
  { name: 'Mina', kind: 'Crypto', symbol: 'MINA', slug: 'mina', is_active: true },
  { name: 'yearn.finance', kind: 'Crypto', symbol: 'YFI', slug: 'yearn-finance', is_active: true },
  { name: 'XDC Network', kind: 'Crypto', symbol: 'XDC', slug: 'xinfin', is_active: true },
  { name: 'Ravencoin', kind: 'Crypto', symbol: 'RVN', slug: 'ravencoin', is_active: true },
  { name: 'Holo', kind: 'Crypto', symbol: 'HOT', slug: 'holo', is_active: true },
  { name: 'NEM', kind: 'Crypto', symbol: 'XEM', slug: 'nem', is_active: true },
  { name: 'IoTeX', kind: 'Crypto', symbol: 'IOTX', slug: 'iotex', is_active: true },
  { name: 'Secret', kind: 'Crypto', symbol: 'SCRT', slug: 'secret', is_active: true },
  { name: '1inch Network', kind: 'Crypto', symbol: '1INCH', slug: '1inch', is_active: true },
  { name: 'Pax Dollar', kind: 'Crypto', symbol: 'USDP', slug: 'paxos-standard', is_active: true },
  { name: 'Theta Fuel', kind: 'Crypto', symbol: 'TFUEL', slug: 'theta-fuel', is_active: true },
  { name: 'SushiSwap', kind: 'Crypto', symbol: 'SUSHI', slug: 'sushiswap', is_active: true },
  { name: 'WOO Network', kind: 'Crypto', symbol: 'WOO', slug: 'wootrade', is_active: true },
  { name: 'OMG Network', kind: 'Crypto', symbol: 'OMG', slug: 'omg', is_active: true },
  { name: 'BORA', kind: 'Crypto', symbol: 'BORA', slug: 'bora', is_active: true },
  { name: 'Bancor', kind: 'Crypto', symbol: 'BNT', slug: 'bancor', is_active: true },
  { name: 'Decred', kind: 'Crypto', symbol: 'DCR', slug: 'decred', is_active: true },
  { name: 'Livepeer', kind: 'Crypto', symbol: 'LPT', slug: 'livepeer', is_active: true }
])