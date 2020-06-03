pragma solidity >=0.4.21 <0.7.0;
pragma experimental ABIEncoderV2;
contract ReadandWriteStruct4V6{
   struct paramsStruct4 {
        string param16;
        string paramval16;
        string param17;
        string paramval17;
        string param18;
        string paramval18;
        string param19;
        string paramval19;
        string param20;
        string paramval20;
    }
    mapping (string => paramsStruct4) public object4;
function setKeyArray4(string memory id,string[] memory keys,string[] memory values) public {
         object4[id] = paramsStruct4(
                            keys[0],values[0],keys[1],values[1],keys[2],values[2],
                            keys[3],values[3],keys[4],values[4]
                            );
     }
function getKey4(string memory id)public view returns(string memory,string memory,string memory,string memory,string memory){
    return (object4[id].param16,object4[id].param17,
    object4[id].param18,object4[id].param19,object4[id].param20);
}
function getValue4(string memory id)public view returns(string memory,string memory,string memory,string memory,string memory){
    return (object4[id].paramval16,object4[id].paramval17,
    object4[id].paramval18,object4[id].paramval19,object4[id].paramval20);
}
}