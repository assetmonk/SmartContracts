pragma solidity >=0.4.21 <0.7.0;
pragma experimental ABIEncoderV2;
contract ReadandWriteStruct2V6{
   struct paramsStruct2 {
        string param6;
        string paramval6;
        string param7;
        string paramval7;
        string param8;
        string paramval8;
        string param9;
        string paramval9;
        string param10;
        string paramval10;
    }
    mapping (string => paramsStruct2) public object2;
function setKeyArray2(string memory id,string[] memory keys,string[] memory values) public {
         object2[id] = paramsStruct2(
                            keys[0],values[0],keys[1],values[1],keys[2],values[2],
                            keys[3],values[3],keys[4],values[4]
                            );
     }
function getKey2(string memory id)public view returns(string memory,string memory,string memory,string memory,string memory){
    return (object2[id].param6,object2[id].param7,
    object2[id].param8,object2[id].param9,object2[id].param10);
}
function getValue2(string memory id)public view returns(string memory,string memory,string memory,string memory,string memory){
    return (object2[id].paramval6,object2[id].paramval7,
    object2[id].paramval8,object2[id].paramval9,object2[id].paramval10);
}
}