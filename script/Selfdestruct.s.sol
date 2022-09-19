// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/Selfdestruct.sol";

contract SelfdestructScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        Selfdestruct selfdestructs = new Selfdestruct();
        vm.stopBroadcast();
    }
}
