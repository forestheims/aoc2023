import { firstDataSet } from "./DataDay1.js";
import { fauxData } from "./FauxData.js";

// let array = firstDataSet.data.split(`\n`)
let array = firstDataSet.data.split(`\n`)

const replaceTextNumbers = (string) => {
        return string.replace(/one/g, "1").replace(/two/g, "2").replace(/three/g, "3").replace(/four/g, "4").replace(/five/g, "5").replace(/six/g, "6").replace(/seven/g, "7").replace(/eight/g, "8").replace(/nine/g, "9");
}

let newArray = array.map((line) => {
    let stringArray = line.split('');
    // let newStringArray = [];
    let updatedString = '';
    while (stringArray.length > 0) {
        const cutChar = stringArray.shift();
        // newStringArray.push(cutChar);
        // let testCase = newStringArray.join('');
        // console.log(newStringArray, "nsa");
        updatedString = replaceTextNumbers(`${updatedString}${cutChar}`);
        // console.log(updatedString, "upd")
    }
    console.log(updatedString.replace(/\D/g, ''))
    return updatedString.replace(/\D/g, '');
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

// console.log(newArray)
// console.log(newerArray)

const initialValue = 0;
const sumWithInitial = newerArray.reduce(
  (accumulator, currentValue) => accumulator + currentValue,
  initialValue,
);

console.log(sumWithInitial);

// not 55841
// not 55831
// still not 55831
// still not 55831
// not 56322
