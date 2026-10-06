import { JPathInterface } from "./JPathInterface.js";
export declare class JPath {
    static parse(jpathExpression: string): (string | number)[];
    static parseDotted(jpathExpressionDotted: string, jpathArray: (string | number)[]): number;
    static serialize(jpath: (string | number)[], delimiter: string, start: string, finish: string): string;
    static getByJPathExpression(obj: any, jpathExpression: string): any;
    static getByJPath(obj: any, jpath: (string | number)[]): any;
    static setByJPathExpression(obj: any, jpathExpression: string, value: any): JPathInterface;
    static setByJPath(obj: any, jpath: (string | number)[], value: any): JPathInterface;
    static setByJPathWalkFlatRebuild(obj: any, jpath: (string | number)[], value: any, nameHolderId: string, nameId: string, branchName: string): JPathInterface;
}
//# sourceMappingURL=JPath.d.ts.map