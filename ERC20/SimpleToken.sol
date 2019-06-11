pragma solidity ^0.5.0;

import "./ERC20.sol";
import "./ERC20Detailed.sol";
import "./ERC20Burnable.sol";

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract SimpleToken is ERC20, ERC20Detailed, ERC20Burnable {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
     //Detailed 안에 "풀내임" "작은내임" 으로 내맘대로 가능하고 18은 10^18승인듯 단위에서 곱해야되는것으로 추정 
    constructor () public ERC20Detailed("MinjuTokeghghn", "MuyuyuyJ", 18) {
        _mint(msg.sender, 1000000 * (10 ** uint256(decimals())));
    }
}