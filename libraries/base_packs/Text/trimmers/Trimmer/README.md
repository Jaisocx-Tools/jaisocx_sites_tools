`Jaisocx Sites Tools`



# OptimizedTrimmer


  >  💡  The package does trimming actions the optimized efficient fast way, by numerique equality of symbols.

  | 🗂  **Library**  | `@jaisocx/optimized_trimmer` | 🏷  **ver.**: `1.0.1` |

  | 🗓  **Updated**  | 🌾 Autumn 2026 | `10. Sep AD 2026 20:02:20 UTC` |

  | 📐  **Size**     | 🗂 Folder: ... KB | 📦 Tarball: ... KB | 📄 .js: ... KB | 

  | ⚡  **just JS Base Engine required** | ✅ yes |

  | ⚡  **Support by JS Engines** | 🌐 Browser: ✅ yes | 🧭 Server-side Express: ✅ yes | 🖥️ Command Line: ✅ yes |

  | ⚡  **JS Calls** | Network(fetch): ❌ no | 🌐 Browser(DOM): ❌ no | 🧭 Server-side Express(FS | DB): ❌ no | 🖥️ Command Line: ❌ no |


---





## The aim of the setup
  >  💡  The package does trimming actions the optimized efficient fast way, by numerique equality of symbols.


Methods obtain start and end offsets, trim, then return the updated start and end offsets.

The package does trimming actions the optimized efficient fast way, by numerique equality of symbols and returns just two positions numbers of the trimmed text, no recopy neither too many args recopy. the reference to the text of datatype like ArrayBuffer and 2 numbers, the start and finish positions of the text in the ArrayBuffer.

A bytes array stores a text, every text symbol by number of datatype byte of 8 bits.

The text for trimming resides between in_startPos and in_endPos.

**Example 1**: `\r\n\r\n@import url('https://cdn.example.com/lib/style1.css');  \r\n    @import url('https://cdn.example.com/lib/style2.css');\r\n\r\n `

**Example 2**: `@import  url("https://cdn.example.com/lib/style1.css");`

**Text 1**:    `'https://cdn.example.com/lib/style1.css'`

**in_startPos**: `16`, **in_endPos**: `55`,
    `[ 16, 55 ]`


could need trmming single or double quotes, just by comparing ( in_buffer[ in_startPos ] === (number of symbol single quote) )
  then, having trimmed all tokens set in method call ( in_tokensBefore: number[][] or ArrayBuffer[] ),

`@returns` the updated **in_startPos** and **in_endPos**, however as the return value, the array of 2 numbers: `[ in_startPos, in_endPos ]`
    `[ 17, 54 ]`





##  Structure

```ls
📚 OptimizedTrimmer/
    🗂 src/
      🗂 optimized_trimmer/
        📄 OptimizedTrimmer.ts
        📄 OptimizedTrimmerInterface.ts
      📄 index.ts
    📊 test/
      📄 Test.js
    🗂 transpiled/
      🗂 CommonJS/
      🗂 ESNext/
      🗂 Resolved/
        📄 optimized_trimmer_resolved.js
      🗂 Simple/
        📄 OptimizedTrimmer.js
      🗂 Webpack/
        📄 optimized_trimmer_bundle.js
    📄 index_preview.html
    📄 index_preview.mhtml
    📄 index_preview.eml
    📄 optimized_trimmer_preview.html
    📄 package.json
    📄 package-lock.json
    📦 jaisocx-optimized_trimmer-1.0.1.tgz
    📒 README.md
    📄 README.html
    📄 README.mhtml
    📄 README.eml
    📄 webpack.aliases.json

```



## Interfaces

### Interface for OptimizedTrimmer.ts

  **OptimizedTrimmerInterface**

  ```typescript
    // ${package}/src/optimized_trimmer/OptimizedTrimmerInterface.ts

    /**  @class OptimizedTrimmer
    * 💡 the class does trimming actions the optimized efficient fast way, by numerique equality of symbols
    */
    export interface OptimizedTrimmerInterface {

      /**
      * 💡 for the easier debug, string values of modes like "mode_tokens__before", "mode_tokens__after"
      * @method devTrimSurroundingTokens( ...@args ): number[]
      */
      devTrimSurroundingTokens (
        in_buffer: Uint8Array,
        in_startPos: number,
        in_endPos: number,
        in_tokensBefore: number[][],
        in_tokensAfter: number[][],
        in_mode_tokens: string,
        in_mode_verify: string,
        in_mode_onverify_err: string
      ): number[];



      /** @method trimSurroundingTokens( ...@args ): number[]
      * 💡 the method obtains start and end offsets, trims, then returns the updated start and end offsets.
      *     a bytes array stores text, every text symbol as a number of datatype byte of 8 bits.
      *     The text for trimming resides between in_startPos and in_endPos.
      *     Example 1: [    @import url('https://cdn.example.com/lib/style1.css');  \r\n    @import url('https://cdn.example.com/lib/style2.css');\r\n\r\n]
      *     Example 2: [@import  url("https://cdn.example.com/lib/style1.css");]
      *     Text 1:    'https://cdn.example.com/lib/style1.css'
      *     in_startPos: 16, in_endPos: 55,
      *       [ 16, 55 ]
      *     could need trmming single or double quotes, just by comparing ( in_buffer[ in_startPos ] === (number of symbol single quote) )
      *     then, having trimmed all tokens set in method call ( in_tokensBefore: number[][] ),
      * @returns the updated in_startPos and in_endPos, however as the return value, the array of 2 numbers: [ in_startPos, in_endPos ]
      *       [ 17, 54 ]
      */
      trimSurroundingTokens (
        in_buffer: ArrayBuffer,
        in_startPos: number,
        in_endPos: number,
        in_tokensBefore: number[][],
        in_tokensAfter: number[][],
        in_mode_tokens: number,
        in_mode_verify: number,
        in_mode_onverify_err: number
      ): number[];


      /*
      trimQuotes( inText: string ): string|false;
      trimRoundBracesAndQuotesInside( inText: string ): string|false;
      ...
      ...
      */

    }
  ```

---



Have a nice day,

Jaisocx Software Architect Elias



