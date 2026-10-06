/** @class JPath:
 * 💡JPath accepts queries of datatype (string|number)[] and performs lookup in js objects and arrays
*/
export interface JPathInterface {
    _jpathExpressionMaxSize: number;
    setExpressionMaxSize(expressionMaxSize: number): JPathInterface;
    parse(jpathExpression: string): (string | number)[];
    parseDotted(jpathExpressionDotted: string, jpathArray: (string | number)[]): number;
    serialize(jpath: (string | number)[], delimiter: string, start: string, finish: string): string;
    getByJPathExpression(obj: any, jpathExpression: string): any;
    getByJPath(obj: any, jpath: (string | number)[]): any;
    setByJPathExpression(obj: any, jpathExpression: string, value: any): JPathInterface;
    setByJPath(obj: any, jpath: (string | number)[], value: any): JPathInterface;
    setByJPathWalkFlatRebuild(obj: any, jpath: (string | number)[], value: any, nameHolderId: string, nameId: string, branchName: string): JPathInterface;
}
//# sourceMappingURL=JPathInterface.d.ts.map