


export interface ArrayOrObjectInterface {


  public static getDataTypeStringAndConst(value: any): { dataTypeString: any, dataType: number };


  public static getDataType(value: any): number;


  public static getArrayOrObjectItemsAmount (
    isArray: number,
    arrayOrObject: any
  ): {itemsAmount: number, objectKeys: any[]|null};


  public static iterateOverArrayOrObject (
    dataType: number,
    arrayOrObject: any,
    callback: CallableFunction,
    callbackPayload: any,
    objectKeys: any[]|null
  ): any;


  public static iterateOverArrayOrObjectDefined (
    isArray: number,
    arrayOrObject: any,
    callback: CallableFunction,
    callbackPayload: any,
    objectKeys: any[]|null
  ): any;
}


