// 📁 main.js
const { sayGoodbye, sayHi } = require('./module/dist/sayHi.js');

console.log(sayHi); // function...
sayHi('John'); // Hello, John!
sayGoodbye('John'); // Good bye, John!