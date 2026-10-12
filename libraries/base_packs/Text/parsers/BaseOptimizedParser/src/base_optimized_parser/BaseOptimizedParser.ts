// @jaisocx BaseOptimizedParser/src/base_optimized_parser/BaseOptimizedParser.ts

import { BaseOptimizedParserInterface } from "./BaseOptimizedParserInterface.js";



export class BaseOptimizedParser implements BaseOptimizedParserInterface {

  NUM_MODE_TOKENS__BEFORE: number             = 21;
  NUM_MODE_TOKENS__AFTER: number              = 22;
  NUM_MODE_TOKENS__BEFORE_N_AFTER: number     = 23;

  MODE_TOKENS__BEFORE: string             = "mode_tokens__before";
  MODE_TOKENS__AFTER: string              = "mode_tokens__after";
  MODE_TOKENS__BEFORE_N_AFTER: string     = "mode_tokens__before_n_after";

  MODE_VERIFY__AND: string                = "mode_verify__and";
  MODE_VERIFY__OR: string                 = "mode_verify__or";
  MODE_VERIFY__STRICT: string             = "mode_verify__strict";

  MODE_ONVERIFY_ERR__TRIM: string         = "mode_onverify_err__trim";
  MODE_ONVERIFY_ERR__SKIP: string         = "mode_onverify_err__skip";
  MODE_ONVERIFY_ERR__SKIP_N_EXIT: string  = "mode_onverify_err__skip_n_exit";



  SYMBOL_DOUBLE_QUOTE: number = 1;
  SYMBOL_SINGLE_QUOTE: number = 1;
  SYMBOL_BACKSLASH_QUOTE: number = 1;

  SYMBOL_ROUND_BRACE_OPEN: number = 1;
  SYMBOL_ROUND_BRACE_CLOSE: number = 1;

  SYMBOL_SQUARE_BRACE_OPEN: number = 1;
  SYMBOL_SQUARE_BRACE_CLOSE: number = 1;

  SYMBOL_FIGURED_BRACE_OPEN: number = 1;
  SYMBOL_FIGURED_BRACE_CLOSE: number = 1;


  MAX_ITERATIONS_NUMBER: number = 1;



  //@ts-ignore
  _trimmer: Trimmer = ( new Object() );



  constructor() {
    this.SYMBOL_DOUBLE_QUOTE = 1;
    this.SYMBOL_SINGLE_QUOTE = 1;
    this.SYMBOL_BACKSLASH_QUOTE = 1;

    this.SYMBOL_ROUND_BRACE_OPEN = 1;
    this.SYMBOL_ROUND_BRACE_CLOSE = 1;

    this.SYMBOL_SQUARE_BRACE_OPEN = 1;
    this.SYMBOL_SQUARE_BRACE_CLOSE = 1;

    this.SYMBOL_FIGURED_BRACE_OPEN = 1;
    this.SYMBOL_FIGURED_BRACE_CLOSE = 1;

    this.MAX_ITERATIONS_NUMBER = 1;


    this._trimmer = ( new Trimmer() );
  }



  devTrimSurroundingTokens (
    in_buffer: Uint8Array,
    in_startPos: number,
    in_endPos: number,
    in_tokensBefore: number[][],
    in_tokensAfter: number[][],
    in_mode_tokens: string,
    in_mode_verify: string,
    in_mode_onverify_err: string
  ): number[] {

    let loc_buf: Uint8Array    = in_buffer;
    let loc_startPos: number   = in_startPos;
    let loc_endPos: number     = in_endPos;
    let loc_tokensBefore: number[][]   = in_tokensBefore;
    let loc_tokensAfter: number[][]    = in_tokensAfter;
    let loc_mode_tokens: string        = in_mode_tokens;
    let loc_mode_verify: string        = in_mode_verify;
    let loc_mode_onverify_err: string  = in_mode_onverify_err;

    let r_range: number[] = ( new Array() );



    let maxCounter: number = loc_endPos;
    let offsetStep: number = 1;



    let loc_buflen: number = loc_buf.length;
    let loc_bufLastPos: number = ( loc_buflen - 1 );
    let loc_char: number = 32;

    let LOC_COUNTER_DEC: number = 1;
    let LOC_MAX_COUNTER: number = this.MAX_ITERATIONS_NUMBER;

    if ( maxCounter > loc_buflen ) {
      maxCounter = loc_buflen;
    }
    if ( maxCounter > LOC_MAX_COUNTER ) {
      maxCounter = LOC_MAX_COUNTER;
    }



    let ci_mode_tokens: string   = this.MODE_TOKENS__BEFORE;
    let ci_loopCounter: number   = ( loc_startPos );
    let ci_offset: number        = 1;
    maxCounter = ( maxCounter + LOC_COUNTER_DEC );
    LOC_MAX_COUNTER = ( LOC_MAX_COUNTER + LOC_COUNTER_DEC );

    let ci_char: number = 32;
    let equalBufAndTokenChars: boolean = true;

    ci_marker_a: while ( ci_loopCounter < maxCounter ) {
      ci_loopCounter = ( ci_loopCounter + offsetStep );
      if ( ci_loopCounter > maxCounter ) {
        break ci_marker_a;
      }

      ci_offset = ( ci_loopCounter - LOC_COUNTER_DEC );
      if ( ci_offset > loc_bufLastPos ) {
        break ci_marker_a;
      }

// -- symbol of the bitsbuf --
      ci_char = loc_buf[ ci_offset ];



      if (
           ( ci_mode_tokens === this.MODE_TOKENS__BEFORE )
        && (
                ( loc_mode_tokens === this.MODE_TOKENS__BEFORE )
             || ( loc_mode_tokens === this.MODE_TOKENS__BEFORE_N_AFTER )
           )
      ) {

        let loc_tokensNumber: number   = loc_tokensBefore.length;
        let loc_tokensLastPos: number  = ( loc_tokensNumber - 1 );

        let B_LOC_MAX_COUNTER: number  = 1;
        let B_LOC_COUNTER_DEC: number  = 2;



        let toExit_from_a: boolean   = false;
        let toContinue_in_a: boolean = false;

        let cib_loopCounter: number  = 1;
        let cib_offsetStep: number   = 1;
        let cib_offset: number       = 1;
        let cib_maxCounter: number   = loc_tokensNumber;

        if ( cib_maxCounter > loc_tokensNumber ) {
          cib_maxCounter = loc_tokensNumber;
        }
        if ( cib_maxCounter > B_LOC_MAX_COUNTER ) {
          cib_maxCounter = B_LOC_MAX_COUNTER;
        }

        maxCounter = ( maxCounter + B_LOC_COUNTER_DEC );
        B_LOC_MAX_COUNTER = ( B_LOC_MAX_COUNTER + B_LOC_COUNTER_DEC );
        let cib_token: number[] = ( new Array() );

        ci_marker_b: while ( cib_loopCounter < cib_maxCounter ) {

          cib_loopCounter = ( cib_loopCounter + cib_offsetStep );

          if ( cib_loopCounter > cib_maxCounter ) {
            break ci_marker_b;
          }

          cib_offset = ( cib_loopCounter - B_LOC_COUNTER_DEC );
          if ( cib_offset > loc_tokensLastPos ) {
            break ci_marker_b;
          }

// -- one next token of beforeTokens number[][] or ArrayBuffer[] --
          cib_token = loc_tokensBefore[ cib_offset ];
          equalBufAndTokenChars = true;



          let loc_tokenBytesLen: number     = cib_token.length;
          if ( loc_tokenBytesLen === 1 ) {
// -- same logique like ci_marker_c: while for more bytes of a cib_token  --
          }





          let loc_tokenCharLastPos: number  = ( loc_tokenBytesLen - 1 );

          let C_LOC_MAX_COUNTER: number  = 1;
          let C_LOC_COUNTER_DEC: number  = 2;



          toExit_from_a = false;

          let cic_loopCounter: number  = 1;
          let cic_offsetStep: number   = 1;
          let cic_offset: number       = 1;
          let cic_maxCounter: number   = loc_tokenBytesLen;

          if ( cic_maxCounter > loc_tokenBytesLen ) {
            cic_maxCounter = loc_tokenBytesLen;
          }
          if ( cic_maxCounter > C_LOC_MAX_COUNTER ) {
            cic_maxCounter = C_LOC_MAX_COUNTER;
          }

          cic_maxCounter = ( cic_maxCounter + C_LOC_COUNTER_DEC );
          C_LOC_MAX_COUNTER = ( C_LOC_MAX_COUNTER + C_LOC_COUNTER_DEC );
          let cic_tokenChar: number = 32;
          toContinue_in_a = false;

          ci_marker_c: while ( cic_loopCounter < cic_maxCounter ) {

            cic_loopCounter = ( cic_loopCounter + cic_offsetStep );

            if ( cic_loopCounter > cic_maxCounter ) {
              break ci_marker_c;
            }

            cic_offset = ( cic_loopCounter - C_LOC_COUNTER_DEC );
            if ( cic_offset > loc_tokenCharLastPos ) {
              break ci_marker_c;
            }



            cic_tokenChar = cib_token[ cic_offset ];
            equalBufAndTokenChars = ( ci_char === cic_tokenChar );

            if ( equalBufAndTokenChars === false ) {
              // toExit_from_a = true;
              break ci_marker_c;
            }


            continue ci_marker_c;
          }



          /* if ( toContinue_in_a === true ) {
            break ci_marker_b;
            // continue ci_marker_a;
          } else {
            // no of chars in a token didn't match
          } */



          toExit_from_a = true; // ( custom code ... );

          if ( toExit_from_a === true ) {
            break ci_marker_b;
            // continue ci_marker_a;
          }

          // break ci_marker_a;
          // break ci_marker_b;
          // continue ci_marker_a;
          continue ci_marker_b;
        }







        if ( loc_mode_verify === this.MODE_VERIFY__AND ) {

        }



        // ci_mode_tokens = this.MODE_TOKENS__AFTER;
      }



      if (
           ( ci_mode_tokens  === this.MODE_TOKENS__AFTER )
        && (
                ( loc_mode_tokens === this.MODE_TOKENS__AFTER )
             || ( loc_mode_tokens === this.MODE_TOKENS__BEFORE_N_AFTER )
           )
      ) {

      }





      /* cib_loopCounter = 1;
      cib_maxCounter = 1;
      ci_marker_b: while ( cib_loopCounter < cib_maxCounter ) {
        // toExit_from_a = ( custom code ... );
        if ( toExit_from_a === true ) {
          // break ci_marker_b;
          // continue ci_marker_a;
        }

        // break ci_marker_a;
        // break ci_marker_b;
        // continue ci_marker_a;
        continue ci_marker_b;
      } */

      /* if ( toExit_from_a === true ) {
        break ci_marker_a;
      } */


      continue ci_marker_a;
    }



    return r_range;
  }



  verifyTokensBefore (
    in_num: number
  ): number {
    return 1;
  }



  trimSurroundingTokens (
    in_buffer: ArrayBuffer,
    in_startPos: number,
    in_endPos: number,
    in_tokensBefore: number[][],
    in_tokensAfter: number[][],
    in_mode_tokens: number,
    in_mode_verify: number,
    in_mode_onverify_err: number
  ): number[] {
    throw new Error("Method not implemented.");
  }



  trimOneSurroundingToken (
    in_buffer: ArrayBuffer,
    in_startPos: number,
    in_endPos: number,
    in_tokensBefore: number[][],
    in_tokensAfter: number[][],
    in_mode_tokens: number,
    in_mode_verify: number,
    in_mode_onverify_err: number
  ): number[] {
    throw new Error("Method not implemented.");
  }



  trimOneSurroundingChar (
    in_buffer: ArrayBuffer,
    in_startPos: number,
    in_endPos: number,
    in_tokensBefore: number[][],
    in_tokensAfter: number[][],
    in_mode_tokens: number,
    in_mode_verify: number,
    in_mode_onverify_err: number
  ): number[] {
    throw new Error("Method not implemented.");
  }



  trimOneChar (
    in_buffer: ArrayBuffer,
    in_startPos: number,
    in_endPos: number,
    in_tokenChar: number,
    in_mode_tokens: number
  ): number[] {

    let loc_buf: Uint8Array      = ( new Uint8Array( in_buffer ) );
    let loc_startPos: number     = in_startPos;
    let loc_endPos: number       = in_endPos;
    let loc_tokenChar: number    = in_tokenChar;
    let loc_mode_tokens: number  = in_mode_tokens;

    let r_range: number[] = ( new Array() );
    let r_startPos: number = 1;
    let r_endPos: number = 1;



    let maxCounter: number = loc_endPos;
    let offsetStep: number = 1;



    let loc_buflen: number = loc_buf.length;
    let loc_bufLastPos: number = ( loc_buflen - 1 );
    let loc_char: number = 32;

    let LOC_COUNTER_DEC: number = 1;
    let LOC_MAX_COUNTER: number = this.MAX_ITERATIONS_NUMBER;

    if ( maxCounter > loc_buflen ) {
      maxCounter = loc_buflen;
    }
    if ( maxCounter > LOC_MAX_COUNTER ) {
      maxCounter = LOC_MAX_COUNTER;
    }



    // let ci_mode_tokens: string   = this.MODE_TOKENS__BEFORE;
    let ci_loopCounter: number   = ( loc_startPos );
    let ci_offset: number        = 1;
    maxCounter = ( maxCounter + LOC_COUNTER_DEC );
    LOC_MAX_COUNTER = ( LOC_MAX_COUNTER + LOC_COUNTER_DEC );

    let ci_char: number = 32;
    let equalBufAndTokenChar: boolean = true;


    if ( loc_mode_tokens === this.NUM_MODE_TOKENS__AFTER ) {
      let twiceOffsetStep: number = ( offsetStep << 1 );
      offsetStep = ( offsetStep - twiceOffsetStep );
    }


    ci_marker_a: while ( ci_loopCounter < maxCounter ) {
      ci_loopCounter = ( ci_loopCounter + offsetStep );
      if ( ci_loopCounter > maxCounter ) {
        break ci_marker_a;
      }

// -- in engineering ...
      ci_offset = ( ci_loopCounter - LOC_COUNTER_DEC );
      if ( ci_offset > loc_bufLastPos ) {
        break ci_marker_a;
      }

// -- symbol of the bitsbuf --
      ci_char = loc_buf[ ci_offset ];
      equalBufAndTokenChar = ( ci_char === loc_tokenChar );


      if ( equalBufAndTokenChar === true ) {
        continue ci_marker_a;
      }

// -- found the start position of the trimmed text in the bitsbuf --
      break ci_marker_a;
    }
// -- loop comparing next byte with the trimmimg token finished --



    if ( equalBufAndTokenChar === false ) {
      r_startPos = loc_startPos;
      r_endPos = loc_endPos;
    }



    if ( loc_mode_tokens === this.NUM_MODE_TOKENS__BEFORE ) {
      r_startPos = ci_offset;

      r_range[0] = r_startPos;
      r_range[1] = loc_endPos;
    } else if ( loc_mode_tokens === this.NUM_MODE_TOKENS__AFTER ) {
      r_endPos   = ci_offset;

      r_range[0] = loc_startPos;
      r_range[1] = r_endPos;
    }


    return r_range;
  }

}




