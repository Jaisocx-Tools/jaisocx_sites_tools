class Loop {

  MAX_ITERATIONS_NUMBER: number = 1;

  constructor() {
    this.MAX_ITERATIONS_NUMBER = 1;
  }



  loop(
    in_maxCounter: number,
    in_offsetStep: number,
    in_buf: number[]
  ) {
    let maxCounter: number = in_maxCounter;
    // let maxCounter: number = 1;
    let offsetStep: number = in_offsetStep;
    // let offsetStep: number = 1;
    let loc_buf: number[] = in_buf;
    let loc_buflen: number = loc_buf.length;
    let loc_bufLastPos: number = ( loc_buflen - 1 );
    let loc_char: number = 32;

    let LOC_COUNTER_DEC: number = 2;
    let LOC_MAX_COUNTER: number = this.MAX_ITERATIONS_NUMBER;

    if ( maxCounter > loc_buflen ) {
      maxCounter = loc_buflen;
    }
    if ( maxCounter > LOC_MAX_COUNTER ) {
      maxCounter = LOC_MAX_COUNTER;
    }



    let ci_loopCounter: number = 1;
    let ci_offset: number = 1;
    maxCounter = ( maxCounter - LOC_COUNTER_DEC );
    LOC_MAX_COUNTER = ( LOC_MAX_COUNTER - LOC_COUNTER_DEC );

    let ci_char: number = 32;
    ci_marker_a: while ( ci_loopCounter < maxCounter ) {
      ci_loopCounter += offsetStep;
      if ( ci_loopCounter > maxCounter ) {
        break ci_marker_a;
      }

      ci_offset = ( ci_loopCounter - LOC_COUNTER_DEC );
      if ( ci_offset > loc_bufLastPos ) {
        break ci_marker_a;
      }

      ci_char = loc_buf[ ci_offset ];



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

  }

}