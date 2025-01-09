function balanceOf(address account) public view returns (uint256) {
        return balances[account] != 0 ? balances[account] : 0;
    }