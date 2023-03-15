// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Blogs{

    enum Status{
        published,
        unpublished
    }

    struct Blog{   
        string text;
        uint likes;
        string writerName;
        address owner;
        Status status;
    }

    Blog[] blogs;

    function addBlog(string memory text, string memory name, uint like, address owner, Status status) public returns(Blog memory) {
        Blog memory blog = Blog(text, like, name, owner, status);
        blogs.push(blog);
        return blog;
    }

    function getBlogs() public view returns(Blog[] memory) {
        return blogs;
    }
}