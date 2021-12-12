cd ../../
[ -d workspaces/source-pane ] || npm add source-pane
[ -d workspaces/profile-pane ] || npm add profile-pane
cd -
cd ../solid-panes; git apply ../my-solidos-patches/solid-panes.diff
cd ../source-pane; git apply ../my-solidos-patches/source-pane.diff
cd ../solid-ui; git apply ../my-solidos-patches/solid-ui.diff
cd ../../
npx lerna bootstrap --force-local
cd -
