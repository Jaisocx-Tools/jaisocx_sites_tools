`Jaisocx Sites Tools`


  ⛔  `in engineering`


# BaseOptimizedParser

  >  💡  The base for a C library for the very quick parsing 
  >        in the base method by the REP CMP instruction 
  >        of nearly just one CPU tact on a RAM block every one byte)).
  
  

  | 🗂  **Library**  | `@jaisocx/base_optimized_parser` | 🏷  **ver.**: `1.0.1` |

  | 🗓  **Updated**  | 🌾 Autumn 2026 | `10. Sep AD 2026 20:02:20 UTC` |

  | 📐  **Size**     | 🗂 Folder: 36 KB | 📦 Tarball: 5 KB | 📄 .js: 12 KB |

  | ⚡  **just JS Base Engine required** | ✅ yes | 
  
  | ⚡  **Support by JS Engines** | 🌐 Browser: ✅ yes | 🧭 Server-side Express: ✅ yes | 🖥️ Command Line: ✅ yes |

  | ⚡  **JS Calls** | Network(fetch): ❌ no | 🌐 Browser(DOM): ❌ no | 🧭 Server-side Express(FS | DB): ❌ no | 🖥️ Command Line: ❌ no | 

---





## The aim of the setup. The BaseOptimizedParser

  >  💡  The base for a C library for the very quick parsing
  >        in the base method by the REP CMP instruction
  >        of nearly just one CPU tact on a RAM block every one byte)).

  
  The BaseOptimizedParser class is the pack of base methods for symbol-based markup parsing
  like splitting by text lines, text lines' columns by tabs or spaces, parsers for xml, html, json.

  By the base parser, later we might lookup, parse and trim,
  being sure we've done coding tasks due to modern CPU's opcodes supported.

  Like a code snippet, or the very small bibliotheque to install and import,
  reviewed for the code transparency, quality and efficiency.





## Story. The BaseOptimizedParser

  >  💡  Keeping in mind CPU tacts for the base actions of a bibliotheque, when engineering software.



### Story. The Base Idea
  
  The modern CPUs, since years AD 2000-ieths the Intel Pentium, and since 2010-ieths all,
  support the REP opcode prefix, that does massbatch actions by the base CPU opcodes much faster,
  due to thought through algorythms for just pair of dedicated actions by opcodes with the REP,
  like REP CMP, comparing one single byte in a RAM space,
  delivering just the RAM address to the array of offsets of the being compared byte's entries.
  
  
  
  Then, comparing bytes before or after the found entries,
  we minimize the subcalls number of the parser's or trimmer's methods,
  just thanks to the smaller number of the iterations on the several times smaller RAM block,
  the array of offsets of symbol's entries.
  
  The CMP and other 1 tact opcodes number for comparing one byte before or after,
  becomes tens times more, but, still the nice choice.
  
  
  


### Parsers. Theories


#### Types of Parsers

  1. **Old Good Style, Data Packets**.

  2. **MarkUp via Text Symbols**: text lines, columns by tabs, xml, html, json, code syntax.



##### Old Good Style, Data Packets

  One CPU tact opcodes allow to access data the fastest way,
  having known the data address,
  by offset number from a file's start,
  and the number of symbols of a data block,
  text, image or sound.



##### MarkUp via Text Symbols

  Secure, like data remains usable for the future regardless of software bibs for the markup, 
  thanks to the same byte codes of the symbols in markups via text symbols 
  in every one-byte charset encoding,
  seen in all IDE's or text viewers under every OS,
  printed or saved to the harddrive.

  >  💡  why still http/1.1 remains of great choice.

  The symbols in every one-byte charset encoding for other countries' alphabets 
  have numbers of ranges more than 90 or 100 dg)) and less than 255 or 360,
  approximately round or square and good.





##  Structure. The BaseOptimizedParser

```ls
32_000  📚 BaseOptimizedParser/
          🗂 src/
            🗂 base_optimized_parser/
  12_633      📄 BaseOptimizedParser.ts
   2_918      📄 BaseOptimizedParserInterface.ts
     238    📄 index.ts
          📊 test/
   5_837    📄 BaseOptimizedParser_Test.js
          🗂 transpiled/
            🗂 CommonJS/
            🗂 ESNext/
            🗂 Resolved/
              📄 base_optimized_parser_resolved.js
            🗂 Simple/
              🗂 base_optimized_parser/
                📄 BaseOptimizedParser.js
          📄 index_preview.html
          📄 base_optimized_parser_preview.html
   1_235  📄 package.json
     223  📄 package-lock.json
   4_178  📦 jaisocx-base_optimized_parser-1.0.1.tgz
   5_912  📒 README.md
          📄 README.html

```





## Interfaces. The BaseOptimizedParser

### Interface for the BaseOptimizedParser.ts

  **BaseOptimizedParserInterface**

  ```typescript
    // ${package}/src/base_optimized_parser/BaseOptimizedParserInterface.ts

    /**  @class BaseOptimizedParser
    * 💡 the parser does the optimized efficient fast way, by numerique equality of symbols
    */
    export interface BaseOptimizedParserInterface {

      /**
      * 💡 for the easier debug, string values of modes like "mode_tokens__before", "mode_tokens__after"
      * @method devTrimSurroundingTokens( ...@args ): number[]
      */
      devTrimSurroundingTokens (
        in_buffer: Uint8Array,
        in_startPos: number,
        in_endPos: number,
        in_tokensBefore: number[][]
      ): number[];

    }
  ```





## Examples

  **BaseOptimizedParser**

  **IDE, js**

  ```javascript
    // ...
  ```



## Test

  **terminal**

  ```bash
    node "./test/BaseOptimizedParser_Test.js"
  ```



### Docker

  **terminal**

  ```bash
    docker compose exec ts bash
    
    # cd "/opt/jaisocx/sites_docker_environment/workspace/ts/cloned_repos/jaisocx_sites_tools/libraries/base_packs/text/parsers/BaseOptimizedParser"
    # cd "./cloned_repos/jaisocx_sites_tools/libraries/base_packs/text/parsers/BaseOptimizedParser"
    # cd libraries/base_packs/text/parsers/BaseOptimizedParser
    
    node "./test/BaseOptimizedParser_Test.js"
  ```


---



Have a nice day,

Jaisocx Software Architect I.P.



