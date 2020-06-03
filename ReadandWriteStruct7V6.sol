pragma solidity >=0.4.21 <0.7.0;
pragma experimental ABIEncoderV2;
contract ReadandWriteStruct7V6{
    struct paramsStruct7{
        string param31;
        string paramval31;
        string param32;
        string paramval32;
        string param33;
        string paramval33;
        string param34;
        string paramval34;
        string param35;
        string paramval35;
    }
    mapping (string => paramsStruct7) public object7;
function setKeyArray7(string memory id,string[] memory keys,string[] memory values) public {
         object7[id] = paramsStruct7(
                            keys[0],values[0],keys[1],values[1],keys[2],values[2],
                            keys[3],values[3],keys[4],values[4]
                            );
     }
function getKey7(string memory id)public view returns(string memory,string memory,string memory,string memory,string memory){
    return (object7[id].param31,object7[id].param32,
    object7[id].param33,object7[id].param34,object7[id].param35);
}
function getValue7(string memory id)public view returns(string memory,string memory,string memory,string memory,string memory){
    return (object7[id].paramval31,object7[id].paramval32,
    object7[id].paramval33,object7[id].paramval34,object7[id].paramval35);
}
}