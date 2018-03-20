pragma solidity ^0.4.19;

contract CroixCoin {
  /* mapping all the accounts and balances of croixCoin */
  mapping (address => uint256) public balanceOf;

  function CroixCoin(uint initialSupply) public {
    balanceOf[msg.sender] = initialSupply;
  }

  function transfer(address _to, uint256 _value) {
    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;
  }
}
