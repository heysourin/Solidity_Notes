contract NestedMapping {
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _num) public view returns (bool) {
        // You can get values from a nested mapping
        // even when it is not initialized
        return nested[_addr1][_num];
    }

    function set(address _addr1, uint _num) public {
        nested[_addr1][_num] = true;
    }

    function remove(address _addr1, uint _num) public {
        delete nested[_addr1][_num];
    }
}
