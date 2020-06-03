pragma solidity >=0.4.21 <0.7.0;
pragma experimental ABIEncoderV2;
contract ReadandWriteStruct3V6{
   struct paramsStruct3 {
        string param11;
        string paramval11;
        string param12;
        string paramval12;
        string param13;
        string paramval13;
        string param14;
        string paramval14;
        string param15;
        string paramval15;
    }
    mapping (string => paramsStruct3) public object3;
function setKeyArray3(string memory id,string[] memory keys,string[] memory values) public {
         object3[id] = paramsStruct3(
                            keys[0],values[0],keys[1],values[1],keys[2],values[2],
                            keys[3],values[3],keys[4],values[4]
                            );
     }
function getKey3(string memory id)public view returns(string memory,string memory,string memory,string memory,string memory){
    return (object3[id].param11,object3[id].param12,
    object3[id].param13,object3[id].param14,object3[id].param15);
}
function getValue3(string memory id)public view returns(string memory,string memory,string memory,string memory,string memory){
    return (object3[id].paramval11,object3[id].paramval12,
    object3[id].paramval13,object3[id].paramval14,object3[id].paramval15);
}
}