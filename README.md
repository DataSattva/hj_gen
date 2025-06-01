# hj_gen
HashJing generation. 
 
A Solidity contract demonstrating the architecture for storing large SVGs via `SSTORE2`.

```
SvgSplitMandala/
├── contracts/
│   ├── SvgSplitMandala.sol     ← main
│   └── SSTORE2.sol             ← dada storage util
├── README.md                   
├── LICENSE                     ← ???
```

The contract is broken down into:
- `storeLeft(bytes)` — stores the left part of the SVG
- `storeRight(bytes)` — stores the right part
- `getSvg([leftFlag, rightFlag])` — assembles the SVG and recolors parts by flag (1 = white, 0 = black)

The contract was created as part of the [HashJing](https://github.com/DataSattva/hashjing) project, which visualizes 256-bit hashes as mandalas.

