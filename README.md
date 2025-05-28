# hj_gen
HashJing generation. 
 
Solidity контракт, демонстрирующий архитектуру хранения больших SVG через `SSTORE2`.

```
SvgSplitMandala/
├── contracts/
│   ├── SvgSplitMandala.sol     ← main
│   └── SSTORE2.sol             ← dada storage util
├── README.md                   
├── LICENSE                     ← ???
```

Контракт разбит на:
- `storeLeft(bytes)` — сохраняет левую часть SVG
- `storeRight(bytes)` — сохраняет правую часть
- `getSvg([leftFlag, rightFlag])` — собирает SVG и перекрашивает части по флагу (1 = белый, 0 = чёрный)

Контракт создан как часть проекта [HashJing](https://github.com/DataSattva/hashjing), визуализирующего 256-битные хэши как мандалы.

