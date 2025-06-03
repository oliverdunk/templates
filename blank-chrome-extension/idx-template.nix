{ pkgs, language ? "js", ... }: {
  packages = if language == "ts" then [ pkgs.nodejs_20 ] else [];
  bootstrap = ''
    cp -rf ${./.}/${language} "$WS_NAME"
    chmod -R +w "$WS_NAME"
    mv "$WS_NAME" "$out"
    ${if language == "ts" then "( cd \$out && npm i --ignore-scripts )" else ""}
  '';
}
