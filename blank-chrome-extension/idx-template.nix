{ pkgs, language ? "js", ... }: {
  packages = [ pkgs.nodejs_20 pkgs.zip ];
  bootstrap = ''
    cp -rf ${./.}/${language} "$WS_NAME"
    chmod -R +w "$WS_NAME"
    mv "$WS_NAME" "$out"
    ${if language == "ts" then "( cd \$out && npm i --ignore-scripts )" else ""}
  '';
}
