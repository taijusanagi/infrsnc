//SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

library ByteSwapping {
    function swapUint32(uint32 input) internal pure returns (uint32 output) {
        output = input;
        output = ((output & 0xFF00FF00) >> 8) | ((output & 0x00FF00FF) << 8);
        output = (output >> 16) | (output << 16);
    }

    function swapUint16(uint16 input) internal pure returns (uint16 output) {
        output = input;
        output = (output >> 8) | (output << 8);
    }
}