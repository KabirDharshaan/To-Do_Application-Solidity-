// SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract Practise{
 /* struct */
   struct Todo{
      string work;
      bool status;
   }
    
    Todo[] todo;
   function addWork(string memory _work, bool _status)public {
      todo.push(Todo({work:_work,status:_status}));
   }
   function getWork(uint _index)public view returns(string memory){
         return todo[_index].work;
   }
}