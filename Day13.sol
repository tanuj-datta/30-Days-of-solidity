pragma solidity ^0.8.13;
interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
}
contract Token is IERC20 {
  
}
contract TokenHolder {
    IERC20 private token;

    function setTokenAddress(address _tokenAddress) public {
        token = IERC20(_tokenAddress);
    }
    function transferTokens(address _recipient, uint256 _amount) public {
        token.transfer(_recipient, _amount);
    }
}
