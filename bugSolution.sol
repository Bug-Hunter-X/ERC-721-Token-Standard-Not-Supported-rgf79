function balanceOf(address account) public view returns (uint256) {
        if (IERC721(address(this)).supportsInterface(0x80ac58cd)) {
            return IERC721(address(this)).balanceOf(account);
        } else {
            return balances[account];
        }
    } 