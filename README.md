# Solidity_01

**Gas Cost: 
Job of a solidity developer is to make the contract in such a way that it consumes less amount of gas
1. pure < view < simple

2. private < internal < external < public

3. The more 'stuff' you do, more gas is going to be consumed.
Note: State variables are by default: Internal
and functions are by default: Public

4. Constant < Immutable < Simple (variables)

5. calldata < memory 

!!View and pure do not cost gas when called alone, If a gas calling function calls a view
or pure function only then will it cost gas

**Color:
1. Red: Payable
2. Blue: View/Pure function, State variable
3. Orange: Simple/transactional function


**EVM can access and store information in six places:
1. Stack
2. Memory
3. Storage
4. Calldata
5. Code
6. Logs
