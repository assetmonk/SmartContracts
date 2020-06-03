pragma solidity >=0.4.21 <0.7.0;
pragma experimental ABIEncoderV2;
contract ReadandWriteStruct6V6{
    struct paramsStruct6 {
        string param26;
        string paramval26;
        string param27;
        string paramval27;
        string param28;
        string paramval28;
        string param29;
        string paramval29;
        string param30;
        string paramval30;
    }
    mapping (string => paramsStruct6) public object6;
function setKeyArray6(string memory id,string[] memory keys,string[] memory values) public {
         object6[id] = paramsStruct6(
                            keys[0],values[0],keys[1],values[1],keys[2],values[2],
                            keys[3],values[3],keys[4],values[4]
                            );
     }
function getKey6(string memory id)public view returns(string memory,string memory,string memory,string memory,string memory){
    return (object6[id].param26,object6[id].param27,
    object6[id].param28,object6[id].param29,object6[id].param30);
}
function getValue6(string memory id)public view returns(string memory,string memory,string memory,string memory,string memory){
    return (object6[id].paramval26,object6[id].paramval27,
    object6[id].paramval28,object6[id].paramval29,object6[id].paramval30);
}
}