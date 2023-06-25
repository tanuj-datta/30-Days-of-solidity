pragma solidity ^0.8.13;

contract AddressBook {
    struct Contact {
        string name;
        string phone;
        string email;
    }

    mapping(address => Contact) public contacts;

    function addContact(string memory _name, string memory _phone, string memory _email) public {
        Contact memory newContact = Contact(_name, _phone, _email);
        contacts[msg.sender] = newContact;
    }

    function getContact(address _address) public view returns (string memory, string memory, string memory) {
        Contact memory contact = contacts[_address];
        return (contact.name, contact.phone, contact.email);
    }
}
