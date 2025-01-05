
const fs = require('fs');
const path = require('path');
const XLSX = require('xlsx');
const cheerio = require('cheerio');

let keys = [];

// 遍历文件夹并读取文件内容
function readFilesInFolder(folderPath) {
    let errorInfos = {};
    let files = fs.readdirSync(folderPath, 'utf8');
    files.forEach(file => {
        const filePath = path.join(folderPath, file);
        let res = fs.statSync(filePath);
        if (!res.isDirectory() && path.extname(file).toLowerCase() === '.html') {
            let content = fs.readFileSync(filePath, 'utf8');
            const $ = cheerio.load(content);
            let title = $('#title').text();
            const errorContent = $('#error').text();
            if (errorContent) {
                errorInfos[title] = errorContent;
                keys.push(title);
            }
        }
    });
    return errorInfos;
}

let errorInfos = readFilesInFolder('./html');

// 读取 Excel 文件内容 测试用例
const filePath_test = './test_desp.xlsx'; // 原文件路径
const workbook_testDesp = XLSX.readFile(filePath_test);
const sheetName1 = workbook_testDesp.SheetNames[0];
const worksheet1 = workbook_testDesp.Sheets[sheetName1]
const data1 = XLSX.utils.sheet_to_json(worksheet1, { header: 1 }); // header: 1 返回二维数组

for (let el of data1) {
    if (errorInfos[el[0]]) {
        errorInfos[el[0] + '_desp'] = el[3];
    }
}

// 错误描述放在一起
const errorDesps = [];
for (let i = 0; i < keys.length; i++) {
    errorDesps[i] = [];
    errorDesps[i].push(keys[i]);
    errorDesps[i].push(errorInfos[keys[i] + '_desp']);
}
const workbook_errors = XLSX.utils.book_new();
const newWorksheetErrors = XLSX.utils.aoa_to_sheet(errorDesps);

// 设置单元格样式（表头背景颜色）
const headerRange = XLSX.utils.decode_range(newWorksheetErrors['!ref']);
for (let col = headerRange.s.c; col <= headerRange.e.c; col++) {
  const cellAddress = XLSX.utils.encode_cell({ r: 0, c: col }); // 第一行每一列
  if (!newWorksheetErrors[cellAddress]) continue;
  console.log(newWorksheetErrors[cellAddress])
  newWorksheetErrors[cellAddress].s = {
    fill: {
      patternType: 'solid',
      fgColor: { rgb: 'FFFF00' }, // 黄色背景
    },
    font: {
      bold: true,
      color: { rgb: 'FF0000' }, // 红色字体
    },
    alignment: {
      horizontal: 'center',
      vertical: 'center',
    },
  };
}

XLSX.utils.book_append_sheet(workbook_errors, newWorksheetErrors, 'Sheet1');
// 导出文件
const filePathErrors = './output_errors.xlsx'; // 文件保存路径
XLSX.writeFile(workbook_errors, filePathErrors);


// 读取文件
const filePath = './document001.xlsx'; // 原文件路径
const workbook = XLSX.readFile(filePath);

// 选择第一个工作表
const sheetName = workbook.SheetNames[0];
const worksheet = workbook.Sheets[sheetName];

// 将工作表数据转换为 JSON 格式（方便操作）
const data = XLSX.utils.sheet_to_json(worksheet, { header: 1 }); // header: 1 返回二维数组


// 新增第二列数据
for (let i = 0; i < data.length; i++) {
    if (!data[i]) data[i] = []; // 确保每行是一个数组
    if (errorInfos[data[i][0]]) {
        data[i].splice(1, 0, errorInfos[data[i][0] + '_desp']); // 在索引为1的位置插入数据
    } else {
        data[i].splice(1, 0, ''); // 在索引为1的位置插入数据
    }
    // const cellAddress = XLSX.utils.encode_cell({ r: i, c: 1 });
    // worksheet[cellAddress].s = {
    //     fill: {
    //         patternType: 'solid',
    //         fgColor: { rgb: 'FFFF00' }, // 黄色背景
    //     }
    // }
}


//将更新后的数据转换回工作表
const newWorksheet = XLSX.utils.aoa_to_sheet(data);
// 更新工作簿
workbook.Sheets[sheetName] = newWorksheet;
// 写入新的 Excel 文件
const newFilePath = './example_updated.xls'; // 保存新文件路径
XLSX.writeFile(workbook, newFilePath);
console.log(`文件已更新并保存为 ${newFilePath}`);