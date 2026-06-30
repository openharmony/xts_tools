/*
 * Copyright (C) 2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

const fs = require('fs');
const path = require('path');

function updateEtsFiles(dir) {
    const files = fs.readdirSync(dir);

    files.forEach(file => {
        const filePath = path.join(dir, file);
        const stat = fs.statSync(filePath);

        if (stat.isDirectory() && !['build','oh_modules'].includes(file))
        {
            updateEtsFiles(filePath);

            //Recursively process subdirectories
        } else if (path.extname(file) === '.ets'){
            let content = fs.readFileSync(filePath, 'utf8');
            if (!content.trim().startsWith("'use static'")) {
                content = "'use static';\n" + content;

                fs.writeFileSync(filePath, content, 'utf8');

                console.log("Updated ${filePath}")
            }
        }
    });
}

//Get the targe directory
const args = process.argv.slice(2);
if (args.length === 0) {
    console.error('Please provide a target directory as an argument.');
    process.exit(1);
}

const targetDirectory = args[0];
updateEtsFiles(targetDirectory);