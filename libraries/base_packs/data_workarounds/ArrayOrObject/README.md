
# ArrayOrObject
  >  💡  ArrayOrObject has several methods for ...

  | 🗂 **️Library**  | `@jaisocx/aray_or_object` | 🏷 **️ver.**: `1.0.1` | 

  | 🗓 **Updated**  | 🌷 Spring 2026 | `07. Mai AD 2026 07:23:20 UTC` | 

  | 📐 **Size**     | 🗂 Folder:  | 📦 Tarball:  | 📄 .js:  | 

  | ⚡  **just JS Base Engine required** | ✅ yes |

  | ⚡  **Support by JS Engines** | 🌐 Browser: ✅ yes | 🧭 Express: ✅ yes | 🖥️ Console: ✅ yes |

  | ⚡  **JS Calls** | Network(fetch): ❌ no | 🌐 Browser(DOM): ❌ no 🧭 Express(FS | DB): ❌ no | 🖥️ Console: ❌ no |

---



## The aim of the setup
  > 💡 ArrayOrObject has several methods for ...





## Structure

```ls
📚 ArrayOrObject
    🗂 src/
      📄 index.ts
      📄 ArrayOrObject.ts
      📄 ArrayOrObjectInterface.ts
      📄 IJsonDataType.ts
    📊 test/
      📄 ...
    🗂 transpiled/
      🗂 CommonJS/
      🗂 ESNext/
      🗂 Simple/
        📄 ArrayOrObject.js
    📦 jaisocx-aray_or_object-1.0.1.tgz
    📄 package.json
    📄 package-lock.json
    📒 README.md
```



## Interfaces

  **ArrayOrObjectInterface**
    
  ```typescript
    // $ _ ${package}/src/ArrayOrObjectInterface.ts
    
    // @class ArrayOrObject. 💡 ArrayOrObject has several methods for ...
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
  ```



---



Have a nice day,

Jaisocx Software Architect Elias


