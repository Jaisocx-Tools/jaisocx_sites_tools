"use strict";
// ${package}/src/JPath.ts
Object.defineProperty(exports, "__esModule", { value: true });
exports.JPath = void 0;
const JPathImpl_js_1 = require("./JPathImpl.js");
class JPath {
    // jpath string exression as "subtree[1].opened" => [ "subtree", 1, "opened" ]
    // with this art of array of properties names of javascript object tree
    //  it is easier to get the property value of any datatype in javascript objects and arrays.
    //  later usage of the jpath array:
    //    let jpath = JPath.parse( "subtree[1].opened" );
    //    let obj = { "subtree": [{ "opened": false }, { "opened": true }] };
    //    let valueFound = JPath.getByJPath( jpath, obj );
    //    console.log( valueFound );
    //    prints out => true
    static parse(jpathExpression) {
        const jpathImpl = (new JPathImpl_js_1.JPathImpl());
        const retValue = jpathImpl.parse(jpathExpression);
        return (retValue);
    }
    // @method protected parseDotted( ... @args ): number
    // @inokedBy method: public parse ( jpathExpression: string ): (string|number)[]
    // splitted with symbol point, adds to jpathArray, numeric array elem id or textual field name.
    static parseDotted(jpathExpressionDotted, jpathArray) {
        const jpathImpl = (new JPathImpl_js_1.JPathImpl());
        const retValue = jpathImpl.parseDotted(jpathExpressionDotted, jpathArray);
        return (retValue);
    }
    static serialize(jpath, delimiter, start, finish) {
        const jpathImpl = (new JPathImpl_js_1.JPathImpl());
        const retValue = jpathImpl.serialize(jpath, delimiter, start, finish);
        return (retValue);
    }
    static getByJPathExpression(obj, jpathExpression) {
        const jpathImpl = (new JPathImpl_js_1.JPathImpl());
        const retValue = jpathImpl.getByJPathExpression(obj, jpathExpression);
        return (retValue);
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
    static getByJPath(obj, jpath) {
        const jpathImpl = (new JPathImpl_js_1.JPathImpl());
        const retValue = jpathImpl.getByJPath(obj, jpath);
        return (retValue);
    }
    static setByJPathExpression(obj, jpathExpression, value) {
        const jpathImpl = (new JPathImpl_js_1.JPathImpl());
        jpathImpl.setByJPathExpression(obj, jpathExpression, value);
        return jpathImpl;
    }
    static setByJPath(obj, jpath, value) {
        const jpathImpl = (new JPathImpl_js_1.JPathImpl());
        jpathImpl.setByJPath(obj, jpath, value);
        return jpathImpl;
    }
    static setByJPathWalkFlatRebuild(obj, jpath, value, nameHolderId, nameId, branchName) {
        const jpathImpl = (new JPathImpl_js_1.JPathImpl());
        jpathImpl.setByJPathWalkFlatRebuild(obj, jpath, value, nameHolderId, nameId, branchName);
        return jpathImpl;
    }
}
exports.JPath = JPath;
//# sourceMappingURL=JPath.js.map