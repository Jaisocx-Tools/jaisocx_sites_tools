// ${package}/src/JPath.ts

import { JPathInterface } from "./JPathInterface.js";
import { JPathImpl } from "./JPathImpl.js";



export class JPath {

  // jpath string exression as "subtree[1].opened" => [ "subtree", 1, "opened" ]
  // with this art of array of properties names of javascript object tree
  //  it is easier to get the property value of any datatype in javascript objects and arrays.
  //  later usage of the jpath array:
  //    let jpath = JPath.parse( "subtree[1].opened" );
  //    let obj = { "subtree": [{ "opened": false }, { "opened": true }] };
  //    let valueFound = JPath.getByJPath( jpath, obj );
  //    console.log( valueFound );
  //    prints out => true
  static parse ( jpathExpression: string ): (string|number)[] {
    const jpathImpl: JPathImpl = ( new JPathImpl() );

    const retValue: (string|number)[] = jpathImpl.parse( jpathExpression );


    return ( retValue );
  }


  // @method protected parseDotted( ... @args ): number
  // @inokedBy method: public parse ( jpathExpression: string ): (string|number)[]
  // splitted with symbol point, adds to jpathArray, numeric array elem id or textual field name.
  static parseDotted (
    jpathExpressionDotted: string,
    jpathArray: ( string|number )[]
  ): number {
    const jpathImpl: JPathImpl = ( new JPathImpl() );

    const retValue: number = jpathImpl.parseDotted (
      jpathExpressionDotted,
      jpathArray
    );


    return ( retValue );
  }



  static serialize (
    jpath: (string|number)[],
    delimiter: string,
    start: string,
    finish: string
  ): string {
    const jpathImpl: JPathImpl = ( new JPathImpl() );

    const retValue: string = jpathImpl.serialize (
      jpath,
      delimiter,
      start,
      finish
    );


    return ( retValue );
  }



  static getByJPathExpression (
    obj: any,
    jpathExpression: string
  ): any {
    const jpathImpl: JPathImpl = ( new JPathImpl() );

    const retValue: any = jpathImpl.getByJPathExpression (
      obj,
      jpathExpression
    );


    return ( retValue );
  }


  // faster than JPath.getByJPathExpression( jpathExpression: string, value: any );
  // recommended when the lookup more than once with the same jpathExpression,
  // or when You already at once build the jpath array variables to perform lookups
  // like this: let jpath: (string|number)[] = [ "tokens", "startTokens", 0, "length" ];
  //    let jpath = JPath.parse( "subtree[1].opened" ); => [ "subtree", 1, "opened" ]
  //    let obj = { "subtree": [{ "opened": false }, { "opened": true }] };
  //    let valueFound = JPath.getByJPath( jpath, obj );
  //    console.log( valueFound );
  //    prints out => true
  static getByJPath (
    obj: any,
    jpath: (string|number)[]
  ): any {
    const jpathImpl: JPathImpl = ( new JPathImpl() );

    const retValue: any = jpathImpl.getByJPath (
      obj,
      jpath
    );


    return ( retValue );
  }



  static setByJPathExpression (
    obj: any,
    jpathExpression: string,
    value: any
  ): JPathInterface {
    const jpathImpl: JPathImpl = ( new JPathImpl() );

    jpathImpl.setByJPathExpression (
      obj,
      jpathExpression,
      value
    );


    return jpathImpl;
  }



  static setByJPath (
    obj: any,
    jpath: (string|number)[],
    value: any
  ): JPathInterface {
    const jpathImpl: JPathImpl = ( new JPathImpl() );

    jpathImpl.setByJPath (
      obj,
      jpath,
      value
    );


    return jpathImpl;
  }



  static setByJPathWalkFlatRebuild (
    obj: any,
    jpath: (string|number)[],
    value: any,
    nameHolderId: string,
    nameId: string,
    branchName: string
  ): JPathInterface {
    const jpathImpl: JPathImpl = ( new JPathImpl() );

    jpathImpl.setByJPathWalkFlatRebuild (
      obj,
      jpath,
      value,
      nameHolderId,
      nameId,
      branchName
    );


    return jpathImpl;
  }

}


