// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {MyToken} from "../src/MyToken.sol";
import {Script} from "../lib/forge-std/src/Script.sol";
import {console} from "forge-std/console.sol";

contract DeployToken is Script {
    function run() public {
        uint256 pk = vm.envUint("PRIVATE_KEY");
        address owner = vm.envAddress("TOKEN_OWNER");
        vm.startBroadcast(pk);

        // Deploy the token, passing msg.sender as owner
        MyToken token = new MyToken(owner);

        vm.stopBroadcast();

        console.log("Deployed MyToken (ACHE) at:", address(token));
    }
}
