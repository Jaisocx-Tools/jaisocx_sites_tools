// ${package}/src/optimized_trimmer/OptimizedTrimmerInterface.ts

/**  @class OptimizedTrimmer
* the class does trimming actions the optimized efficient fast way, by numerique equality of symbols
*/
export interface OptimizedTrimmerInterface {


  /**
  * for the easier debug, string values of modes like "mode_tokens__before", "mode_tokens__after"
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



  /**
  * the method obtains start and end offsets, trims, then returns the updated start and end offsets.
  * @method trimSurroundingTokens( ...@args ): number[]
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



  trimOneSurroundingToken (
    in_buffer: ArrayBuffer,
    in_startPos: number,
    in_endPos: number,
    in_tokensBefore: number[][],
    in_tokensAfter: number[][],
    in_mode_tokens: number,
    in_mode_verify: number,
    in_mode_onverify_err: number
  ): number[];



  trimOneSurroundingChar (
    in_buffer: ArrayBuffer,
    in_startPos: number,
    in_endPos: number,
    in_tokensBefore: number[][],
    in_tokensAfter: number[][],
    in_mode_tokens: number,
    in_mode_verify: number,
    in_mode_onverify_err: number
  ): number[];



  trimOneChar (
    in_buffer: ArrayBuffer,
    in_startPos: number,
    in_endPos: number,
    in_tokenChar: number,
    in_mode_tokens: number
  ): number[];



  /* trimQuotes( inText: string ): string|false;


  trimRoundBraces( inText: string ): string|false;


  trimRoundBracesAndQuotesInside( inText: string ): string|false;


  trimSquareBraces( inText: string ): string|false;


  trimSquareBracesAndQuotesInside( inText: string ): string|false;


  trimFiguredBraces( inText: string ): string|false;


  trimFiguredBracesAndQuotesInside( inText: string ): string|false;
 */

}




