{ pkgs, language ? "js", ... }: {
  packages = [ pkgs.nodejs_20 ];
  bootstrap = ''
    cp -rf ${./.}/${language} "$WS_NAME"
    chmod -R +w "$WS_NAME"
    mv "$WS_NAME" "$out"
    cd $out && npm i --ignore-scripts
  '';
}
