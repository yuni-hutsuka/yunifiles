// snipet

// process: 処理本体
function process(inputs) {
  const result = inputs;

  return result;
}

// main: 入力処理、データ処理への注入、結果出力
function main(input) {
  // 入力文字列の分割処理
  // 単純分割
  // const lines = input.split("\n");   // 行ごとに分割
  // const elements = input.split(" "); // 空白ごとに分割
  // 組み合わせ分割
  const lines = input.split("\n");   // 行ごとに分割
  let   elements = [];               // 連想配列の用意
  lines.forEach(elem =>{             // forEachでlinesを舐める
    let tmp = elem.split(" ");       // 空白ごとに分割
    elements.push(tmp)               // 分割した文字列を配列に注入
  });

  const result = process(elements);  // 入力に対する処理と結果の受け取り

  console.log(result);                // 結果出力
}

// 入力と実行
const input = require("fs").readFileSync("/dev/stdin", "utf8"); // 標準入力を変数に押し込める
main(input);                                                    // 実行
