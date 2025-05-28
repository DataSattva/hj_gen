// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./SSTORE2.sol";

contract SvgRadialMandala {
    address public radialTemplatePtr;

    /// @notice Запись SVG радиального шаблона в SSTORE2
    function storeTemplate(bytes memory data) public {
        radialTemplatePtr = SSTORE2.write(data);
    }

    /// @notice Возвращает SVG с заменой одного fill='black' на fill='white'
    function getSvg() public view returns (string memory) {
        bytes memory raw = SSTORE2.read(radialTemplatePtr);
        bytes memory pattern = bytes("fill='black'");
        bytes memory replacement = bytes("fill='white'");

        // Ищем и заменяем ПЕРВОЕ вхождение fill='black' на fill='white'
        for (uint256 i = 0; i <= raw.length - pattern.length; i++) {
            bool matchFound = true;
            for (uint256 j = 0; j < pattern.length; j++) {
                if (raw[i + j] != pattern[j]) {
                    matchFound = false;
                    break;
                }
            }
            if (matchFound) {
                for (uint256 j = 0; j < pattern.length; j++) {
                    raw[i + j] = replacement[j];
                }
                break;
            }
        }

        return string(raw);
    }
}
