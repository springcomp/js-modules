// 📁 main.js
const { sayGoodbye, sayHi } = require('../../module/dist/sayHi.umd.min.js');

console.log(sayHi); // function...
sayHi('John'); // Hello, John!
sayGoodbye('John'); // Good bye, John!