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