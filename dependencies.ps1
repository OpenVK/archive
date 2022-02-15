Write-Host -ForegroundColor Yellow "Installing dependencies for Chandler"

cd build
composer install -a

Write-Host -ForegroundColor Yellow "Installing dependencies for OpenVK"

cd extensions/available/openvk
composer install -a
cd Web/static/js
npm i -g yarn
yarn install

Write-Host -ForegroundColor Yellow "Removing useless files"
rmdir .\node_modules\@atlassian\aui\entry\ -r -fo
rmdir .\node_modules\@atlassian\aui\src\ -r -fo
rmdir .\node_modules\@atlassian\brand-logos\ -r -fo
rmdir .\node_modules\@atlassian\tipsy\ -r -fo
rmdir .\node_modules\react\lib -r -fo
rmdir .\node_modules\monaco-editor\dev -r -fo
rmdir .\node_modules\monaco-editor\esm -r -fo
rmdir .\node_modules\monaco-editor\min-maps -r -fo
rmdir .\node_modules\literallycanvas\demo -r -fo
rmdir .\node_modules\literallycanvas\scss -r -fo
rmdir .\node_modules\literallycanvas\src -r -fo
rmdir .\node_modules\asap -r -fo
rmdir .\node_modules\core-js -r -fo
rmdir .\node_modules\create-react-class\ -r -fo
rmdir .\node_modules\ieee754\ -r -fo
rmdir .\node_modules\css.escape\ -r -fo
rmdir .\node_modules\jquery\src\ -r -fo
rmdir .\node_modules\is-stream -r -fo
rmdir .\node_modules\int64-buffer\ -r -fo
rmdir .\node_modules\isarray\ -r -fo
rmdir .\node_modules\iconv-lite\ -r -fo
rmdir .\node_modules\isomorphic-fetch\ -r -fo
rmdir .\node_modules\fbjs\ -r -fo
rmdir .\node_modules\ua-parser-js -r -fo
rmdir .\node_modules\setimmediate\ -r -fo
rmdir .\node_modules\safer-buffer\ -r -fo
rmdir .\node_modules\skatejs\ -r -fo
rmdir .\node_modules\skatejs-template-html\ -r -fo
rmdir .\node_modules\object-assign\ -r -fo
rmdir .\node_modules\node-fetch\ -r -fo
rmdir .\node_modules\encoding\ -r -fo
rmdir .\node_modules\jquery-ui\external\ -r -fo
rmdir .\node_modules\jquery-ui\node_modules\ -r -fo
rmdir .\node_modules\popper.js\ -r -fo
rmdir .\node_modules\promise\ -r -fo
rmdir .\node_modules\msgpack-lite\lib -r -fo
rmdir .\node_modules\msgpack-lite\test -r -fo
rmdir .\node_modules\msgpack-lite\bin -r -fo
rmdir .\node_modules\umbrellajs\src\ -r -fo
rmdir .\node_modules\underscore -r -fo

cd ../../../../../../../
