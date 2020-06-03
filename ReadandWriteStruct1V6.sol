pragma solidity >=0.4.21 <0.7.0;
pragma experimental ABIEncoderV2;
contract ReadandWriteStruct1V6{
   struct paramsStruct1 {
        string param1;
        string paramval1;
        string param2;
        string paramval2;
        string param3;
        string paramval3;
        string param4;
        string paramval4;
        string param5;
        string paramval5;
    }
    mapping (string => paramsStruct1) public object1;
function setKeyArray1(string memory id,string[] memory keys,string[] memory values) public {
         object1[id] = paramsStruct1(
                            keys[0],values[0],keys[1],values[1],keys[2],values[2],
                            keys[3],values[3],keys[4],values[4]
                            );
     }
function getKey1(string memory id)public view returns(string memory,string memory,string memory,string memory,string memory){
    return (object1[id].param1,object1[id].param2,
    object1[id].param3,object1[id].param4,object1[id].param5);
}
function getValue1(string memory id)public view returns(string memory,string memory,string memory,string memory,string memory){
    return (object1[id].paramval1,object1[id].paramval2,
    object1[id].paramval3,object1[id].paramval4,object1[id].paramval5);
}
}