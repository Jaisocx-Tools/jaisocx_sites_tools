import { JPathInterface } from "./JPathInterface.js";
export declare class JPathImpl implements JPathInterface {
    static JPATH_EXPRESSION_MAX_SIZE: number;
    _jpathExpressionMaxSize: number;
    constructor();
    setExpressionMaxSize(expressionMaxSize: number): JPathInterface;
    parse(jpathExpression: string): (string | number)[];
    parseDotted(jpathExpressionDotted: string, jpathArray: (string | number)[]): number;
    serialize(jpath: (string | number)[], concatenator: string, start: string, finish: string): string;
    getByJPathExpression(obj: any, jpathExpression: string): any;
    getByJPath(obj: any, jpath: (string | number)[]): any;
    setByJPathExpression(obj: any, jpathExpression: string, value: any): JPathInterface;
    setByJPath(obj: any, jpath: (string | number)[], value: any): JPathInterface;
    setByJPathWalkFlatRebuild(obj: any, jpath: (string | number)[], value: any, nameHolderId: string, nameId: string, branchName: string): JPathInterface;
}
//# sourceMappingURL=JPathImpl.d.ts.map