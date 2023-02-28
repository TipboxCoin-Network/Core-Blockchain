#! /bin/bash
sh -c 'cd /app; ./geth --datadir tipboxcoin --networkid 404040 --bootnodes "enr:-KO4QAaAMcy2C8Nw7Dl6qud1L-3NGV8vhAXLXwhNua4iFozFekqsPNHlaIUG9mIVrjIAKHUgAPNxeBA-W0K4LwDU-saGAYaIetr5g2V0aMfGhGSlwpCAgmlkgnY0gmlwhMIfQFqJc2VjcDI1NmsxoQIhp27QMzl5aTy-VwDy7zikuIBTFsPaD8ZpCtoXTNOTj4RzbmFwwIN0Y3CCf5yDdWRwgn-c" --mine --syncmode full --unlock 0 --password /app/.accountpassword'
