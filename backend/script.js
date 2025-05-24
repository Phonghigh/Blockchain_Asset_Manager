import { Network, Alchemy } from 'alchemy-sdk';

const settings = {
    apiKey: "alcht_i6ERMHh05eU7YuhNax5SQkii0pGAmN",
    network: Network.ETH_MAINNET,
};

const alchemy = new Alchemy(settings);

// get all NFTs owned by the provided address or ENS domain
const nfts = alchemy.nft.getNftsForOwner("vitalik.eth");