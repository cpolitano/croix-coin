pragma solidity ^0.4.19;

contract CroixCoin {
  /* listen for token transfers */
  event Transfer(address indexed from, address indexed to, uint256 value);

  string public name;
  string public symbol;
  uint8 public decimals;

  /* mapping all the accounts and balances of croixCoin */
  mapping (address => uint256) public balanceOf;

  function CroixCoin(uint initialSupply, string tokenName, string tokenSymbol, uint8 decimalUnits) public {
    balanceOf[msg.sender] = initialSupply;
    name = tokenName;
    symbol = tokenSymbol;
    decimals = decimalUnits;
  }

  function transfer(address _to, uint256 _value) {
    /* check that sender has sufficient funds */
    require(balanceOf[msg.sender] >= _value && balanceOf[_to] + _value >= balanceOf[_to]);

    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;

    Transfer(msg.sender, _to, _value);
  }
}
