This demonstrates:

- `module/sayHi.ts` a TypeScript project that produces both a UMD and an ES6 module using a bundler and minifiyer.
- `app/CommonJS/index.js` a basic CommonJS CLI that consumes the UMD module. 
- `app/ECMAScript/index.js` a basic ECMAScript CLI that consumes the ES5 module.

**Note** the ES6 module is generated with the `.mjs` extension. Otherwise, it would be interpreted as a CommonJS module
because:
- Its file extension would be `.js`
- Its nearest parent `package.json` file at `UMD\module\package.json` does not have a `"type": "module"` entry.

In real scenarios, the bundle would most likely be coming from NPM and be consumed relative to the `node_modules/` folder
of the given project, thus, inheriting the project’s own `package.json` file which, presumably, would have a `"type": "module"` entry.