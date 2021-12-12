
from brownie import KittyNFT,accounts,network,config
import os
def main():
    account = accounts.add(os.getenv("PRIVATE_KEY"))
    uri = "https://ipfs.io/ipfs/QmdMvvevLKAEnkxjiQNYKu2W2WfjVvuo9eay1Cua6AFwrH?filename=Metadata.json"
    nft = KittyNFT.deploy({"from":account})
    trx = nft.create_nft(uri,{"from":account})
    trx.wait(1)