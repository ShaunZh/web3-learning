// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // State Variables
    uint public myUint = 1; 
    uint256 public myUint256 = 1;

    string public myString = "Hello, world";
    bytes32 public mybytes32 = "hello, world";

    address public myAddress = 0x358AA13c52544ECCEF6B0ADD0f801012ADAD5eE3;

    struct MyStruct {
        uint256 myUint256;
        string myString;
    }

    MyStruct public myStrcut = MyStruct(1, "Hello world!");

    // Arrays
    uint[] public uintArray = [1, 2, 3];
    string[] public stringArray = ["Hello", "World"];

    // Mappings
    mapping(uint => string) public myMapping;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }


    constructor() public {
        myMapping[1] = "Jay";
        myMapping[2] = "Hexon";
        myMapping[3] = "Frodo";
    }

    function addBook(
        uint _id,
        string memory _title, 
        string memory _author
    ) public  {
        books[_id] = Book(_title, _author);
    }


    // Local variables
    function getValue() public pure returns(uint){
        uint value = 1;
        return value;
    }

    function addMyBook(
        uint _id,
        string memory _title, 
        string memory _author
    ) public  {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }

}