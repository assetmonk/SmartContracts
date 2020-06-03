pragma solidity >=0.4.21 <0.7.0;
pragma experimental ABIEncoderV2;
contract ReadandWriteStruct5V6{
   struct paramsStruct5 {
        string param21;
        string paramval21;
        string param22;
        string paramval22;
        string param23;
        string paramval23;
        string param24;
        string paramval24;
        string param25;
        string paramval25;
    }
    mapping (string => paramsStruct5) public object5;
function setKeyArray5(string memory id,string[] memory keys,string[] memory values) public {
         object5[id] = paramsStruct5(
                            keys[0],values[0],keys[1],values[1],keys[2],values[2],
                            keys[3],values[3],keys[4],values[4]
                            );
     }
function getKey5(string memory id)public view returns(string memory,string memory,string memory,string memory,string memory){
    return (object5[id].param21,object5[id].param22,
    object5[id].param23,object5[id].param24,object5[id].param25);
}
function getValue5(string memory id)public view returns(string memory,string memory,string memory,string memory,string memory){
    return (object5[id].paramval21,object5[id].paramval22,
    object5[id].paramval23,object5[id].paramval24,object5[id].paramval25);
}
}