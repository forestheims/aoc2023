import { firstDataSet } from "./DataDay3.js";
import fs from 'node:fs';

let a = firstDataSet.data.split("\n");

let b = []

for (let i in a) {
    b.push(a[i].split(""));
}

for (let j in b) {
    for (let x in b) {
        if (b[j][x] === "$") {
            b[j][x] = "&"
        }
    }
    let initialValue = "";
    b[j] = b[j].reduce(
        (accumulator, currentValue) => accumulator + currentValue,
        initialValue,
      );
}

let initialValue = "";
    b = b.reduce(
        (accumulator, currentValue) => accumulator + "\n" + currentValue,
        initialValue,
      );

console.dir(b, { depth: null });
fs.writeFile('./Data.js', b, err => {
    if (err) {
      console.error(err);
    }
    // file written successfully
  });

// function testPeriod(char) {
//     return char === "."
// }

// function testChar(char) {
//     return /^[A-Za-z0-9]*$/.test(char);
// }

// let checked = [];
// let startingNum = {};

// function testSurroundingChar(x, y) {
//     let dictKey = `${x}-${y}`;
//     let isNumber = testChar(b[x][y]);
//     let isStartingNumber = (Number(y) === 0 && isNumber) || (testPeriod(b[x][y-1]) && isNumber);
//     let adjacentArray = []
//     for (let dx = -1; dx <= 1; ++dx) {
//         for (let dy = -1; dy <= 1; ++dy) {

//             if (dx != 0 || dy != 0) {
//                 adjacentArray.push([b[Number(x + dx)][Number(y + dy)]]);
//                 if (isStartingNumber && !startingNum.includes(dictKey)) {
//                     startingNum[dictKey] = [];
//                 }
//             }

            
//         }
//     }
// }


// for (let i in b) {
//     for (let j in i) {
//         console.log(j)
//         testSurroundingChar(i, j);
//     }
// }