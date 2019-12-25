pragma solidity >=0.4.21;

import 'openzeppelin-solidity/contracts/ownership/Ownable.sol';
// contract inherited ownable
contract METoken is Ownable {
    string public constant name = 'Mastering Ethereum Token';
    string public constant symbol = 'MET';
    uint8 public constant decimals = 2;
    uint constant _initial_supply = 2100000000;

    function METoken() public {
        totalSupply_ = _initial_supply;
        balances[msg.sender] = _initial_supply;
        emit Transfer(address(0), msg.sender, _initial_supply);
    }
}