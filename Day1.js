import { firstDataSet, secondDataSet } from "./DataDay1.js";

let array = firstDataSet.data.split(`\n`)

let newNumsArray = []

let newArray = array.map((line) => {
    return line.replace(/\D/g, '')
});

let newerArray = newArray.map((line) => {
    let strArray = line.split('');
    if(strArray.length === 1) {
        return Number(`${line}${line}`)
    } else if (strArray.length == 2) {
        return Number(line);
    } else {
        let first = strArray[0];
        let last = strArray[strArray.length - 1];
        return Number(`${first}${last}`)
    }
})

const initialValue = 0;
const sumWithInitial = newerArray.reduce(
  (accumulator, currentValue) => accumulator + currentValue,
  initialValue,
);

console.log(sumWithInitial);

// Answer: 55108